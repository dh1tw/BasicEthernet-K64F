################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../lwip_1.4.1/src/core/def.c \
../lwip_1.4.1/src/core/dhcp.c \
../lwip_1.4.1/src/core/dns.c \
../lwip_1.4.1/src/core/init.c \
../lwip_1.4.1/src/core/lwip_timers.c \
../lwip_1.4.1/src/core/mem.c \
../lwip_1.4.1/src/core/memp.c \
../lwip_1.4.1/src/core/netif.c \
../lwip_1.4.1/src/core/pbuf.c \
../lwip_1.4.1/src/core/raw.c \
../lwip_1.4.1/src/core/stats.c \
../lwip_1.4.1/src/core/sys.c \
../lwip_1.4.1/src/core/tcp.c \
../lwip_1.4.1/src/core/tcp_in.c \
../lwip_1.4.1/src/core/tcp_out.c \
../lwip_1.4.1/src/core/udp.c 

OBJS += \
./lwip_1.4.1/src/core/def.o \
./lwip_1.4.1/src/core/dhcp.o \
./lwip_1.4.1/src/core/dns.o \
./lwip_1.4.1/src/core/init.o \
./lwip_1.4.1/src/core/lwip_timers.o \
./lwip_1.4.1/src/core/mem.o \
./lwip_1.4.1/src/core/memp.o \
./lwip_1.4.1/src/core/netif.o \
./lwip_1.4.1/src/core/pbuf.o \
./lwip_1.4.1/src/core/raw.o \
./lwip_1.4.1/src/core/stats.o \
./lwip_1.4.1/src/core/sys.o \
./lwip_1.4.1/src/core/tcp.o \
./lwip_1.4.1/src/core/tcp_in.o \
./lwip_1.4.1/src/core/tcp_out.o \
./lwip_1.4.1/src/core/udp.o 

C_DEPS += \
./lwip_1.4.1/src/core/def.d \
./lwip_1.4.1/src/core/dhcp.d \
./lwip_1.4.1/src/core/dns.d \
./lwip_1.4.1/src/core/init.d \
./lwip_1.4.1/src/core/lwip_timers.d \
./lwip_1.4.1/src/core/mem.d \
./lwip_1.4.1/src/core/memp.d \
./lwip_1.4.1/src/core/netif.d \
./lwip_1.4.1/src/core/pbuf.d \
./lwip_1.4.1/src/core/raw.d \
./lwip_1.4.1/src/core/stats.d \
./lwip_1.4.1/src/core/sys.d \
./lwip_1.4.1/src/core/tcp.d \
./lwip_1.4.1/src/core/tcp_in.d \
./lwip_1.4.1/src/core/tcp_out.d \
./lwip_1.4.1/src/core/udp.d 


# Each subdirectory must supply rules for building sources it contributes
lwip_1.4.1/src/core/%.o: ../lwip_1.4.1/src/core/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross ARM C Compiler'
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -O0 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -Wall  -g3 -DDEBUG -DCPU_MK64FN1M0VMD12 -DUSE_RTOS=1 -DFRDM_K64F -DFREEDOM -DFSL_RTOS_FREE_RTOS -I../freertos/Source/include -I../startup -I../board -I../utilities -I../freertos/Source/portable/GCC/ARM_CM4F -I../CMSIS -I../source -I../drivers -I../lwip_1.4.1 -I../lwip_1.4.1/port -I../lwip_1.4.1/src -I../lwip_1.4.1/src/include -I../lwip_1.4.1/src/include/ipv4 -I../lwip_1.4.1/src/include/ipv4/lwip -I../lwip_1.4.1/src/include/lwip -I../lwip_1.4.1/src/include/netif -I../lwip_1.4.1/src/include/posix -std=gnu99 -fno-common  -ffreestanding  -fno-builtin  -mapcs -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


