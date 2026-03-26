@echo off
plink -ssh root@192.168.2.1 -pw analog "echo none | tee /sys/class/leds/led0:green/trigger; echo 1 | tee /sys/class/leds/led0:green/brightness"
pause