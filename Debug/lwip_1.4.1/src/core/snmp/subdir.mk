################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../lwip_1.4.1/src/core/snmp/asn1_dec.c \
../lwip_1.4.1/src/core/snmp/asn1_enc.c \
../lwip_1.4.1/src/core/snmp/mib2.c \
../lwip_1.4.1/src/core/snmp/mib_structs.c \
../lwip_1.4.1/src/core/snmp/msg_in.c \
../lwip_1.4.1/src/core/snmp/msg_out.c 

OBJS += \
./lwip_1.4.1/src/core/snmp/asn1_dec.o \
./lwip_1.4.1/src/core/snmp/asn1_enc.o \
./lwip_1.4.1/src/core/snmp/mib2.o \
./lwip_1.4.1/src/core/snmp/mib_structs.o \
./lwip_1.4.1/src/core/snmp/msg_in.o \
./lwip_1.4.1/src/core/snmp/msg_out.o 

C_DEPS += \
./lwip_1.4.1/src/core/snmp/asn1_dec.d \
./lwip_1.4.1/src/core/snmp/asn1_enc.d \
./lwip_1.4.1/src/core/snmp/mib2.d \
./lwip_1.4.1/src/core/snmp/mib_structs.d \
./lwip_1.4.1/src/core/snmp/msg_in.d \
./lwip_1.4.1/src/core/snmp/msg_out.d 


# Each subdirectory must supply rules for building sources it contributes
lwip_1.4.1/src/core/snmp/%.o: ../lwip_1.4.1/src/core/snmp/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross ARM C Compiler'
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -O0 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -Wall  -g3 -DDEBUG -DCPU_MK64FN1M0VMD12 -DUSE_RTOS=1 -DFRDM_K64F -DFREEDOM -DFSL_RTOS_FREE_RTOS -I../freertos/Source/include -I../startup -I../board -I../utilities -I../freertos/Source/portable/GCC/ARM_CM4F -I../CMSIS -I../source -I../drivers -I../lwip_1.4.1 -I../lwip_1.4.1/port -I../lwip_1.4.1/src -I../lwip_1.4.1/src/include -I../lwip_1.4.1/src/include/ipv4 -I../lwip_1.4.1/src/include/ipv4/lwip -I../lwip_1.4.1/src/include/lwip -I../lwip_1.4.1/src/include/netif -I../lwip_1.4.1/src/include/posix -std=gnu99 -fno-common  -ffreestanding  -fno-builtin  -mapcs -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


