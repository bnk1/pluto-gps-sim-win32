---------------------------------------------------------------
# Commands for pluto-gps-sim
---------------------------------------------------------------
https://wiki.analog.com/university/tools/pluto
---------------------------------------------------------------
pluto-gps-sim.exe -e brdc0830.26n -l 52.37,4.90,0 -t 2026/03/09,02:30:00 -T 2026/03/09,02:30:00 -A -10
pluto-gps-sim.exe -e brdc0830.26n -l 52.37,4.90,0
---------------------------------------------------------------

** Turn off leds: **
ssh-keygen -R 192.168.2.1
	
password: analog 

ls /sys/class/leds/


echo none > /sys/class/leds/led0:yellow/trigger

echo 0 > /sys/class/leds/led0:yellow/brightness

ssh root@192.168.2.1

echo none > /sys/class/leds/led0:yellow/trigger
echo 0 > /sys/class/leds/led0:yellow/brightness
------------------------------------------------
## Start ssh without host key checking
ssh -o StrictHostKeyChecking=no root@192.168.2.1
------------------------------------------------
## To clear the known host entry for
plink -ssh root@192.168.2.1 -pw analog -batch -hostkey *

------------
led0:yellow  mmc0::mmc1::mmc1:1  mmc1::mmc1:0  mmc0::mmc0:1  mmc0::mmc0:0
--------------
plink -ssh root@192.168.2.1 -pw analog "echo none > /sys/class/leds/led0:green/trigger"
--------------
plink -ssh root@192.168.2.1 -pw analog ^
"echo none > /sys/class/leds/led0:green/trigger; echo 0 > /sys/class/leds/led0:green/brightness"
-----------------