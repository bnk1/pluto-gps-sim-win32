ssh-keygen -R 192.168.2.1
ssh-keygen -R 192.168.3.1

# Commands for pluto-gps-sim	https://wiki.analog.com/university/tools/pluto
	pluto-gps-sim.exe -e brdc0830.26n -l 52.37,4.90,0 -t 2026/03/09,02:30:00 -T 2026/03/09,02:30:00 -A -10
	pluto-gps-sim.exe -e brdc0830.26n -l 52.37,4.90,0
	ssh-keygen -R 192.168.2.1
	ls /sys/class/leds/
	echo none > /sys/class/leds/led0:yellow/trigger
	echo 0 > /sys/class/leds/led0:yellow/brightness
	ssh root@192.168.2.1
	ssh root@192.168.3.1
	echo none > /sys/class/leds/led0:yellow/trigger
	echo 0 > /sys/class/leds/led0:yellow/brightness

# Start ssh without host key checking
 ssh -o StrictHostKeyChecking=no root@192.168.2.1

## To clear the known host entry for
	plink -ssh root@192.168.2.1 -pw analog -batch -hostkey *
	plink -ssh root@192.168.2.1 -pw analog "echo none > /sys/class/leds/led0:green/trigger"
	plink -ssh root@192.168.2.1 -pw analog "echo none > /sys/class/leds/led0:green/trigger; echo 0 > /sys/class/leds/led0:green/brightness"
	plink -ssh root@192.168.2.1 -pw analog
sep
Permanenet Mac:
/etc/init.d/S*
chmod +x /mnt/jffs2/autorun.sh
cat /mnt/jffs2/autorun.log
ip link show eth0
#!/bin/sh

echo "autorun started $(date)" >> /mnt/jffs2/autorun.log

# wait until eth0 has IP (after S40network)
while ! ip addr show eth0 | grep -q "inet "; do
    sleep 1
done

sleep 2

ip link set eth0 down
ip link set eth0 address 02:11:22:33:44:55
ip link set eth0 up

echo "MAC fixed $(date)" >> /mnt/jffs2/autorun.log
------------------------------------------------------------------