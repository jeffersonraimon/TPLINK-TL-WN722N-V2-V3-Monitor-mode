# TPLINK-TL-WN722N-V2-V3-Monitor-mode
Script bash to Enable Monitor Mode in TP-LINK TL-WN722N V2/V3

## How Enable

sudo mkdir /opt/driverEthernetUSB
cd /opt/driverEthernetUSB
sudo rmmod r8188eu.ko
git clone https://github.com/aircrack-ng/rtl8188eus
cd rtl8188eus
sudo root
echo "blacklist r8188eu" > "/etc/modprobe.d/realtek.conf"
exit
sudo make
sudo make install
sudo modprobe 8188eu

## How use use mode monitor
iwconfig (to see the dev name) wlan0 in my case
ifconfig wlan0 down
airmon-ng check kill
iwconfig wlan0 mode monitor
ifconfig wlan0 up
iwconfig

## Script
Use the script bash to Enable Monitor Mode if your get some issue after reboot machine

