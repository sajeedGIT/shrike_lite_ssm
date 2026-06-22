from machine import Pin
from time import sleep
import shrike

shrike.reset()
shrike.flash('FPGA_bitstream_MCU.bin')

A = Pin(14, Pin.OUT)
B = Pin(15, Pin.OUT)

C = Pin(2,Pin.IN)
LED = Pin(4,Pin.OUT)

A.value(1)
B.value(1)
if C.value() == 1:
    LED.on()
else :
    LED.off()