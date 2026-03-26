@echo off
plink -ssh -T -batch root@192.168.2.1 -pw analog -no-antispoof "echo none > /sys/class/leds/led0:green/trigger; echo 0 > /sys/class/leds/led0:green/brightness" >nul 2>&1
rem exit