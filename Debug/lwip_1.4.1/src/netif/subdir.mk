################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../lwip_1.4.1/src/netif/etharp.c \
../lwip_1.4.1/src/netif/slipif.c 

OBJS += \
./lwip_1.4.1/src/netif/etharp.o \
./lwip_1.4.1/src/netif/slipif.o 

C_DEPS += \
./lwip_1.4.1/src/netif/etharp.d \
./lwip_1.4.1/src/netif/slipif.d 


# Each subdirectory must supply rules for building sources it contributes
lwip_1.4.1/src/netif/%.o: ../lwip_1.4.1/src/netif/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross ARM C Compiler'
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -O0 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -Wall  -g3 -DDEBUG -DCPU_MK64FN1M0VMD12 -DUSE_RTOS=1 -DFRDM_K64F -DFREEDOM -DFSL_RTOS_FREE_RTOS -I../freertos/Source/include -I../startup -I../board -I../utilities -I../freertos/Source/portable/GCC/ARM_CM4F -I../CMSIS -I../source -I../drivers -I../lwip_1.4.1 -I../lwip_1.4.1/port -I../lwip_1.4.1/src -I../lwip_1.4.1/src/include -I../lwip_1.4.1/src/include/ipv4 -I../lwip_1.4.1/src/include/ipv4/lwip -I../lwip_1.4.1/src/include/lwip -I../lwip_1.4.1/src/include/netif -I../lwip_1.4.1/src/include/posix -std=gnu99 -fno-common  -ffreestanding  -fno-builtin  -mapcs -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


