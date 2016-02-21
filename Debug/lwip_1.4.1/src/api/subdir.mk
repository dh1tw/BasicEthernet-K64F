################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../lwip_1.4.1/src/api/api_lib.c \
../lwip_1.4.1/src/api/api_msg.c \
../lwip_1.4.1/src/api/err.c \
../lwip_1.4.1/src/api/netbuf.c \
../lwip_1.4.1/src/api/netdb.c \
../lwip_1.4.1/src/api/netifapi.c \
../lwip_1.4.1/src/api/sockets.c \
../lwip_1.4.1/src/api/tcpip.c 

OBJS += \
./lwip_1.4.1/src/api/api_lib.o \
./lwip_1.4.1/src/api/api_msg.o \
./lwip_1.4.1/src/api/err.o \
./lwip_1.4.1/src/api/netbuf.o \
./lwip_1.4.1/src/api/netdb.o \
./lwip_1.4.1/src/api/netifapi.o \
./lwip_1.4.1/src/api/sockets.o \
./lwip_1.4.1/src/api/tcpip.o 

C_DEPS += \
./lwip_1.4.1/src/api/api_lib.d \
./lwip_1.4.1/src/api/api_msg.d \
./lwip_1.4.1/src/api/err.d \
./lwip_1.4.1/src/api/netbuf.d \
./lwip_1.4.1/src/api/netdb.d \
./lwip_1.4.1/src/api/netifapi.d \
./lwip_1.4.1/src/api/sockets.d \
./lwip_1.4.1/src/api/tcpip.d 


# Each subdirectory must supply rules for building sources it contributes
lwip_1.4.1/src/api/%.o: ../lwip_1.4.1/src/api/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross ARM C Compiler'
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -O0 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -Wall  -g3 -DDEBUG -DCPU_MK64FN1M0VMD12 -DUSE_RTOS=1 -DFRDM_K64F -DFREEDOM -DFSL_RTOS_FREE_RTOS -I../freertos/Source/include -I../startup -I../board -I../utilities -I../freertos/Source/portable/GCC/ARM_CM4F -I../CMSIS -I../source -I../drivers -I../lwip_1.4.1 -I../lwip_1.4.1/port -I../lwip_1.4.1/src -I../lwip_1.4.1/src/include -I../lwip_1.4.1/src/include/ipv4 -I../lwip_1.4.1/src/include/ipv4/lwip -I../lwip_1.4.1/src/include/lwip -I../lwip_1.4.1/src/include/netif -I../lwip_1.4.1/src/include/posix -std=gnu99 -fno-common  -ffreestanding  -fno-builtin  -mapcs -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


