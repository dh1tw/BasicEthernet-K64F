/*
 * Copyright (c) 2013 - 2016, Freescale Semiconductor, Inc.
 * All rights reserved.
 *
 * Redistribution and use in source and binary forms, with or without modification,
 * are permitted provided that the following conditions are met:
 *
 * o Redistributions of source code must retain the above copyright notice, this list
 *   of conditions and the following disclaimer.
 *
 * o Redistributions in binary form must reproduce the above copyright notice, this
 *   list of conditions and the following disclaimer in the documentation and/or
 *   other materials provided with the distribution.
 *
 * o Neither the name of Freescale Semiconductor, Inc. nor the names of its
 *   contributors may be used to endorse or promote products derived from this
 *   software without specific prior written permission.
 *
 * THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND
 * ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED
 * WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
 * DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE FOR
 * ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES
 * (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES;
 * LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON
 * ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
 * (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS
 * SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
 */


#define DHCP_TIMEOUT 10

#include <string.h>

#include "lwip/opt.h"
#include "lwip/netif.h"
#include "lwip/sys.h"
#include "netif/etharp.h"
#include "lwip/timers.h"
#include "lwip/tcpip.h"
#include "lwip/udp.h"
#include "lwip/dhcp.h"
#include "lwip/api.h"

#include "board.h"
#include "pin_mux.h"
#include "clock_config.h"
#include "ethernetif.h"
#include "fsl_debug_console.h"

/* FreeRTOS kernel includes. */
#include "FreeRTOS.h"
#include "task.h"
#include "queue.h"
#include "timers.h"


/* Task priorities. */
#define hello_task_PRIORITY (configMAX_PRIORITIES - 1)

/*!
 * @brief Task responsible for printing of "Hello world." message.
 */
static void hello_task(void *pvParameters) {
  for (;;) {
	/*PRINTF("Hello world.\r\n");*/
	/* Add your code here */
    vTaskSuspend(NULL);
  }
}

/*!
 * @brief Application entry point.
 */
int main(void) {

  /* Disable the mpu */
  MPU_Type *base = MPU;
  base->CESR &= ~MPU_CESR_VLD_MASK;

  /* Init board hardware. */
  BOARD_InitPins();
  BOARD_BootClockRUN();
  BOARD_InitDebugConsole();

  err_t err;
  struct netif fsl_netif0;
  ip_addr_t fsl_netif0_ipaddr, fsl_netif0_netmask, fsl_netif0_gw;

  // Setup IP Config for DHCP ...
  IP4_ADDR(&fsl_netif0_ipaddr, 0,0,0,0);
  IP4_ADDR(&fsl_netif0_netmask, 0,0,0,0);
  IP4_ADDR(&fsl_netif0_gw, 0,0,0,0);

  /* Add a network interface to the list of lwIP netifs. */
  netif_add(&fsl_netif0, &fsl_netif0_ipaddr, &fsl_netif0_netmask, &fsl_netif0_gw, NULL, ethernetif_init, ethernet_input);
  /* Set the network interface as the default network interface. */
  netif_set_default(&fsl_netif0);
  /* obtain the IP address, default gateway and subnet mask by using DHCP*/
  err = dhcp_start(&fsl_netif0);

  printf("%s : Started DCHP request (%s)\n", __FUNCTION__, lwip_strerr(err));

  for(int i=0; i < DHCP_TIMEOUT && fsl_netif0.dhcp->state != DHCP_BOUND; i++) {
  printf("%s : Current DHCP State : %d\n", __FUNCTION__, fsl_netif0.dhcp->state);
  // Wait a second
  vTaskDelay(1000/portTICK_PERIOD_MS);
  }

  printf("got IP Address!");

  // Make it active ...
  netif_set_up(&fsl_netif0);

  printf("%s : Interface is up : %d\n", __FUNCTION__, fsl_netif0.dhcp->state);
  printf("%s : IP %s\n", __FUNCTION__, ipaddr_ntoa(&fsl_netif0.ip_addr));
  printf("%s : NM %s\n", __FUNCTION__, ipaddr_ntoa(&fsl_netif0.netmask));
  printf("%s : GW %s\n", __FUNCTION__, ipaddr_ntoa(&fsl_netif0.gw));

  if (fsl_netif0.dhcp->state == DHCP_BOUND) {
  // Send out some UDP data
  struct netconn* pConnection;

  // Create UDP connection
  pConnection = netconn_new(NETCONN_UDP);
  // Connect to local port
  err = netconn_bind(pConnection, IP_ADDR_ANY, 12345);
  printf("%s : Bound to IP_ADDR_ANY port 12345 (%s)\n", __FUNCTION__, lwip_strerr(err));

  err = netconn_connect(pConnection, IP_ADDR_BROADCAST, 12346 );
  printf("%s : Connected to IP_ADDR_BROADCAST port 12346 (%s)\n", __FUNCTION__, lwip_strerr(err));
  }

  /* Add your code here */

  /* Create RTOS task */
  xTaskCreate(hello_task, "Hello_task", configMINIMAL_STACK_SIZE, NULL, hello_task_PRIORITY, NULL);
  vTaskStartScheduler();

  for(;;) { /* Infinite loop to avoid leaving the main function */
    __asm("NOP"); /* something to use as a breakpoint stop while looping */
  }
}



