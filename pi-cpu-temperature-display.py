#!/usr/bin/env python3

import tm1637   #pip3 install raspberrypi-tm1637
import time
from gpiozero import CPUTemperature, LED 

tm = tm1637.TM1637(clk=19, dio=26)

power = LED(13)
cpu = CPUTemperature()

power.on()
tm.brightness(4)
try:
    while True:
        time.sleep(1)
        tm.temperature(int(cpu.temperature))
except:
    tm.write([0b01011110, 0b00111111, 0b01010100, 0b01111001])
    time.sleep(1)
    tm.write([0, 0, 0, 0])
    power.off()