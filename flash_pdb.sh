#!/bin/bash

PASS="mordor"
INTERVAL=1
# Función para apagar ambos LEDs
turn_off_leds() {
    echo $PASS | sudo -S sh -c 'echo 0 > /sys/class/leds/ACT/brightness'
    echo $PASS | sudo -S sh -c 'echo 0 > /sys/class/leds/PWR/brightness'
    echo "LEDs apagados."
}

# Función para encender ambos LEDs
turn_on_leds() {
    echo $PASS | sudo -S sh -c 'echo 1 > /sys/class/leds/ACT/brightness'
    echo $PASS | sudo -S sh -c 'echo 1 > /sys/class/leds/PWR/brightness'
    echo "LEDs encendidos."
}

openocd -f interface/stlink.cfg -f target/stm32f0x.cfg -c "program /home/uct/Desktop/detatch_arm_no_interrupt.elf verify reset exit"

while true
do
        turn_off_leds
        sleep $INTERVAL
        turn_on_leds
        sleep $INTERVAL
done

#turn_on_leds
