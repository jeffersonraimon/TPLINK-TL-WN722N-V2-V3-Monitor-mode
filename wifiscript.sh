#! /bin/bash

cd /opt/driverEthernetUSB/rtl8188eus
rmmod 8188eu.ko && echo "blacklist r8188eu" > /etc/modprobe.d/realtek.conf && make && make install && modprobe 8188eu
sleep 2

ifconfig wlan0 down && iwconfig wlan0 mode monitor && ifconfig wlan0 up && iwconfig
