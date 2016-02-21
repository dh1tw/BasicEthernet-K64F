################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../lwip_1.4.1/src/netif/ppp/auth.c \
../lwip_1.4.1/src/netif/ppp/chap.c \
../lwip_1.4.1/src/netif/ppp/chpms.c \
../lwip_1.4.1/src/netif/ppp/fsm.c \
../lwip_1.4.1/src/netif/ppp/ipcp.c \
../lwip_1.4.1/src/netif/ppp/lcp.c \
../lwip_1.4.1/src/netif/ppp/magic.c \
../lwip_1.4.1/src/netif/ppp/md5.c \
../lwip_1.4.1/src/netif/ppp/pap.c \
../lwip_1.4.1/src/netif/ppp/ppp.c \
../lwip_1.4.1/src/netif/ppp/ppp_md5.c \
../lwip_1.4.1/src/netif/ppp/ppp_oe.c \
../lwip_1.4.1/src/netif/ppp/randm.c \
../lwip_1.4.1/src/netif/ppp/vj.c 

OBJS += \
./lwip_1.4.1/src/netif/ppp/auth.o \
./lwip_1.4.1/src/netif/ppp/chap.o \
./lwip_1.4.1/src/netif/ppp/chpms.o \
./lwip_1.4.1/src/netif/ppp/fsm.o \
./lwip_1.4.1/src/netif/ppp/ipcp.o \
./lwip_1.4.1/src/netif/ppp/lcp.o \
./lwip_1.4.1/src/netif/ppp/magic.o \
./lwip_1.4.1/src/netif/ppp/md5.o \
./lwip_1.4.1/src/netif/ppp/pap.o \
./lwip_1.4.1/src/netif/ppp/ppp.o \
./lwip_1.4.1/src/netif/ppp/ppp_md5.o \
./lwip_1.4.1/src/netif/ppp/ppp_oe.o \
./lwip_1.4.1/src/netif/ppp/randm.o \
./lwip_1.4.1/src/netif/ppp/vj.o 

C_DEPS += \
./lwip_1.4.1/src/netif/ppp/auth.d \
./lwip_1.4.1/src/netif/ppp/chap.d \
./lwip_1.4.1/src/netif/ppp/chpms.d \
./lwip_1.4.1/src/netif/ppp/fsm.d \
./lwip_1.4.1/src/netif/ppp/ipcp.d \
./lwip_1.4.1/src/netif/ppp/lcp.d \
./lwip_1.4.1/src/netif/ppp/magic.d \
./lwip_1.4.1/src/netif/ppp/md5.d \
./lwip_1.4.1/src/netif/ppp/pap.d \
./lwip_1.4.1/src/netif/ppp/ppp.d \
./lwip_1.4.1/src/netif/ppp/ppp_md5.d \
./lwip_1.4.1/src/netif/ppp/ppp_oe.d \
./lwip_1.4.1/src/netif/ppp/randm.d \
./lwip_1.4.1/src/netif/ppp/vj.d 


# Each subdirectory must supply rules for building sources it contributes
lwip_1.4.1/src/netif/ppp/%.o: ../lwip_1.4.1/src/netif/ppp/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross ARM C Compiler'
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -O0 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -Wall  -g3 -DDEBUG -DCPU_MK64FN1M0VMD12 -DUSE_RTOS=1 -DFRDM_K64F -DFREEDOM -DFSL_RTOS_FREE_RTOS -I../freertos/Source/include -I../startup -I../board -I../utilities -I../freertos/Source/portable/GCC/ARM_CM4F -I../CMSIS -I../source -I../drivers -I../lwip_1.4.1 -I../lwip_1.4.1/port -I../lwip_1.4.1/src -I../lwip_1.4.1/src/include -I../lwip_1.4.1/src/include/ipv4 -I../lwip_1.4.1/src/include/ipv4/lwip -I../lwip_1.4.1/src/include/lwip -I../lwip_1.4.1/src/include/netif -I../lwip_1.4.1/src/include/posix -std=gnu99 -fno-common  -ffreestanding  -fno-builtin  -mapcs -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


