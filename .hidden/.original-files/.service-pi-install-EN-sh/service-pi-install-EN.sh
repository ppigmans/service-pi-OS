#!/bin/sh/
clear
echo "This script has been designed by Patrick Pigmans for Servicenet ITF"
echo
sleep 2
echo "Service PI OS has been designed by Patrick Pigmans for Servicenet ITF"
echo
sleep 2


echo "Welcome to the Service pi Install script, this will ensure that the latest software used in the Service PI OS project will be installed on your computer this will take a while of your time but it is worth it to see the final product" 
echo
sleep 1
echo "Please make sure the Raspberry pi is connected to the internet, is propperly connected to a powersupply and that you are in root using the sudo su command"
echo
echo "and power failures will end up in a system corruption"
echo
echo
sleep 2
read -p "Do you wish to install LXDE (Press Y or N )" -n 1 -r 
echo 
if [[ ! $REPLY =~ ^[Yy]$ ]]
then
echo "not installing LXDE"
else
echo 
echo "installing LXDE "
echo
sleep 3

apt-get -qq update
apt-get -q install plymouth -y
apt-get -q install plymouth-themes -y
apt-get -q install plymouth-label -y
apt-get -q install lxde -y
apt-get -q install lightdm -y
apt-get -q install xinit -y
apt-get -q install git -y
apt-get -q install curlftpfs -y
apt-get -q install curl -y
apt-get -q install alacarte -y
apt-get -q install libcurl4-gnutls-dev -y
apt-get -q install xcompmgr -y
apt-get -q install lightdm-gtk-greeter -y
useradd -m admin
echo "admin:!letmein#" | chpasswd
echo "root:VmQQApeMnw4n" | chpasswd
useradd -m medewerker
echo "medewerker:123" | chpasswd
echo "medewerker:" | chpasswd

cp /etc/sudoers /etc/sudoers.bk
rm /etc/sudoers

echo
echo "Software insatlled, rewriting sudoers file"
echo
sleep 3

echo "#" >> /etc/sudoers
echo "# This file MUST be edited with the 'visudo' command as root" >> /etc/sudoers
echo "#" >> /etc/sudoers
echo "# Please consider adding local content in /etc/sudoers.d/ instead of" >> /etc/sudoers
echo "# directly modifying this file." >> /etc/sudoers
echo "#" >> /etc/sudoers
echo "# See the man page for details on how to write a sudoers file." >> /etc/sudoers
echo "#" >> /etc/sudoers
echo "Defaults        env_reset" >> /etc/sudoers
echo "Defaults        mail_badpass" >> /etc/sudoers
echo "Defaults        secure_path=\"/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin"\" >> /etc/sudoers
echo >> /etc/sudoers
echo "# Host alias specification" >> /etc/sudoers
echo >> /etc/sudoers
echo "# User alias specification" >> /etc/sudoers
echo >> /etc/sudoers
echo "# Cmnd alias specification" >> /etc/sudoers
echo >> /etc/sudoers
echo "# User privilege specification" >> /etc/sudoers
echo "root    ALL=(ALL:ALL) ALL" >> /etc/sudoers
echo "admin   ALL=(ALL) NOPASSWD: ALL" >> /etc/sudoers
echo >> /etc/sudoers
echo "# Members of the admin group may gain root privileges" >> /etc/sudoers
echo "%admin ALL=(ALL) ALL" >> /etc/sudoers
echo >> /etc/sudoers
echo "# Allow members of group sudo to execute any command" >> /etc/sudoers
echo "%sudo   ALL=(ALL:ALL) ALL" >> /etc/sudoers
echo >> /etc/sudoers
echo "# See sudoers(5) for more information on \"# include\" directives:"
echo >> /etc/sudoers
echo "#includedir /etc/sudoers.d" >> /etc/sudoers
echo "admin ALL=NOPASSWD: ALL" >> /etc/sudoers

sleep 3
echo
echo "rewrite completed"
echo
sleep 3
echo "Stat download of essential software for raspberrypi"
sleep 3
echo
echo "please wait"
sleep 3

git clone -q https://github.com/Hexxeh/rpi-update
mkdir /root/rpi-update
cp -r rpi-update /root/rpi-update
rm -rf rpi-update
/root/rpi-update/rpi-update/rpi-update
echo
sleep 2
echo "rewriting config file"
echo
cp /boot/config.txt /boot/config.txt.bk
rm /boot/config.txt

echo "# For more options and information see" >> /boot/config.txt
echo "# http://www.raspberrypi.org/documentation/configuration/config-txt.md" >> /boot/config.txt
echo "# Some settings may impact device functionality. See link above for details" >> /boot/config.txt
echo >> /boot/config.txt
echo "# uncomment if you get no picture on HDMI for a default "safe" mode" >> /boot/config.txt
echo "#hdmi_safe=1" >> /boot/config.txt
echo >> /boot/config.txt
echo "# uncomment this if your display has a black border of unused pixels visible" >> /boot/config.txt
echo "# and your display can output without overscan" >> /boot/config.txt
echo "#disable_overscan=1" >> /boot/config.txt
echo >> /boot/config.txt
echo "# uncomment the following to adjust overscan. Use positive numbers if console" >> /boot/config.txt
echo "# goes off screen, and negative if there is too much border" >> /boot/config.txt
echo "#overscan_left=16" >> /boot/config.txt
echo "#overscan_right=16" >> /boot/config.txt
echo "#overscan_top=16" >> /boot/config.txt
echo "#overscan_bottom=16" >> /boot/config.txt
echo >> /boot/config.txt
echo "# uncomment to force a console size. By default it will be display's size minus" >> /boot/config.txt
echo "# overscan." >> /boot/config.txt
echo "#framebuffer_width=1280" >> /boot/config.txt
echo "#framebuffer_height=720" >> /boot/config.txt
echo >> /boot/config.txt
echo "# uncomment if hdmi display is not detected and composite is being output" >> /boot/config.txt
echo "#hdmi_force_hotplug=1" >> /boot/config.txt
echo >> /boot/config.txt
echo "# uncomment to force a specific HDMI mode (this will force VGA)" >> /boot/config.txt
echo "#hdmi_group=1" >> /boot/config.txt
echo "#hdmi_mode=1" >> /boot/config.txt
echo >> /boot/config.txt
echo "# uncomment to force a HDMI mode rather than DVI. This can make audio work in" >> /boot/config.txt
echo "# DMT (computer monitor) modes" >> /boot/config.txt
echo "#hdmi_drive=2" >> /boot/config.txt
echo >> /boot/config.txt
echo "# uncomment to increase signal to HDMI, if you have interference, blanking, or" >> /boot/config.txt
echo "# no display" >> /boot/config.txt
echo "#config_hdmi_boost=4" >> /boot/config.txt
echo >> /boot/config.txt
echo "# uncomment for composite PAL" >> /boot/config.txt
echo "#sdtv_mode=2" >> /boot/config.txt
echo >> /boot/config.txt
echo "#uncomment to overclock the arm. 700 MHz is the default." >> /boot/config.txt
echo "arm_freq=1000" >> /boot/config.txt
echo "core_freq=500" >> /boot/config.txt
echo "sdram_freq=500" >> /boot/config.txt
echo "over_voltage=2" >> /boot/config.txt
echo "dtoverlay=vc4-kms-v3d" >> /boot/config.txt
echo "device_tree=" >> /boot/config.txt

echo
sleep 3
echo "rewrite complete"
echo 
sleep 3
echo "cleaning system"
echo
apt-get -qq remove --purge -y lxdm
apt-get -qq autoremove --purge -y
apt-get -qq clean -y
echo
sleep 2
echo "Rewriting lightdm-gtk-greeter.conf and copying files"
mkdir /home/.files
cp ./.hidden/lxde-icon.png /usr/share/lxde/images/lxde-icon.png
cp ./.hidden/logout-banner.png /usr/share/lxde/images/logout-banner.png
cp ./.hidden/sbg.jpg /home/.files/sbg.jpg
cp ./.hidden/lightdm-gtk-greeter.conf /etc/lightdm/
echo
sleep 2
echo "rebooting"
echo 
sleep 5
echo `reboot`
exit 1
fi
echo
read -p "Do you wish to install XFCE4? (press Y or N)"
if [[ ! $REPLY =~ ^[Yy]$ ]]
then
echo "not installing XFCE4"
else
echo "installing xfce4"
echo
sleep 3

apt-get -q update
apt-get -q install plymouth -y
apt-get -q install plymouth-themes -y
apt-get -q install plymouth-label -y
apt-get -q install xfce4 -y
apt-get -q install lightdm -y
apt-get -q install git -y
apt-get -q install curlftpfs -y 
apt-get -q install curl -y
apt-get -q install alacarte -y
apt-get -q install libcurl4-gnutls-dev -y
apt-get -q install xcompmgr -y
apt-get -q install lightdm-gtk-greeter -y

useradd -m admin
echo "admin:!letmein#" | chpasswd
echo "root:VmQQApeMnw4n" | chpasswd
useradd -m medewerker
echo "medewerker:123" | chpasswd
echo "medewerker:" | chpasswd

cp /etc/sudoers /etc/sudoers.bk
rm /etc/sudoers

echo
echo "Software insatlled, rewriting sudoers file"
echo
sleep 3

echo "#" >> /etc/sudoers
echo "# This file MUST be edited with the 'visudo' command as root" >> /etc/sudoers
echo "#" >> /etc/sudoers
echo "# Please consider adding local content in /etc/sudoers.d/ instead of" >> /etc/sudoers
echo "# directly modifying this file." >> /etc/sudoers
echo "#" >> /etc/sudoers
echo "# See the man page for details on how to write a sudoers file." >> /etc/sudoers
echo "#" >> /etc/sudoers
echo "Defaults        env_reset" >> /etc/sudoers
echo "Defaults        mail_badpass" >> /etc/sudoers
echo "Defaults        secure_path=\"/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin"\" >> /etc/sudoers
echo >> /etc/sudoers
echo "# Host alias specification" >> /etc/sudoers
echo >> /etc/sudoers
echo "# User alias specification" >> /etc/sudoers
echo >> /etc/sudoers
echo "# Cmnd alias specification" >> /etc/sudoers
echo >> /etc/sudoers
echo "# User privilege specification" >> /etc/sudoers
echo "root    ALL=(ALL:ALL) ALL" >> /etc/sudoers
echo "admin   ALL=(ALL) NOPASSWD: ALL" >> /etc/sudoers
echo >> /etc/sudoers
echo "# Members of the admin group may gain root privileges" >> /etc/sudoers
echo "%admin ALL=(ALL) ALL" >> /etc/sudoers
echo >> /etc/sudoers
echo "# Allow members of group sudo to execute any command" >> /etc/sudoers
echo "%sudo   ALL=(ALL:ALL) ALL" >> /etc/sudoers
echo >> /etc/sudoers
echo "# See sudoers(5) for more information on \"# include\" directives:"
echo >> /etc/sudoers
echo "#includedir /etc/sudoers.d" >> /etc/sudoers
echo "admin ALL=NOPASSWD: ALL" >> /etc/sudoers

sleep 3
echo
echo "rewrite completed"
echo
sleep 3
echo "Stat download of essential software for raspberrypi"
sleep 3
echo
echo "please wait"
sleep 3

git clone -q https://github.com/Hexxeh/rpi-update
mkdir /root/rpi-update
cp -r rpi-update /root/rpi-update
rm -rf rpi-update
/root/rpi-update/rpi-update/rpi-update
echo
sleep 2
echo "rewriting config file"
echo
cp /boot/config.txt /boot/config.txt.bk
rm /boot/config.txt

echo "# For more options and information see" >> /boot/config.txt
echo "# http://www.raspberrypi.org/documentation/configuration/config-txt.md" >> /boot/config.txt
echo "# Some settings may impact device functionality. See link above for details" >> /boot/config.txt
echo >> /boot/config.txt
echo "# uncomment if you get no picture on HDMI for a default "safe" mode" >> /boot/config.txt
echo "#hdmi_safe=1" >> /boot/config.txt
echo >> /boot/config.txt
echo "# uncomment this if your display has a black border of unused pixels visible" >> /boot/config.txt
echo "# and your display can output without overscan" >> /boot/config.txt
echo "#disable_overscan=1" >> /boot/config.txt
echo >> /boot/config.txt
echo "# uncomment the following to adjust overscan. Use positive numbers if console" >> /boot/config.txt
echo "# goes off screen, and negative if there is too much border" >> /boot/config.txt
echo "#overscan_left=16" >> /boot/config.txt
echo "#overscan_right=16" >> /boot/config.txt
echo "#overscan_top=16" >> /boot/config.txt
echo "#overscan_bottom=16" >> /boot/config.txt
echo >> /boot/config.txt
echo "# uncomment to force a console size. By default it will be display's size minus" >> /boot/config.txt
echo "# overscan." >> /boot/config.txt
echo "#framebuffer_width=1280" >> /boot/config.txt
echo "#framebuffer_height=720" >> /boot/config.txt
echo >> /boot/config.txt
echo "# uncomment if hdmi display is not detected and composite is being output" >> /boot/config.txt
echo "#hdmi_force_hotplug=1" >> /boot/config.txt
echo >> /boot/config.txt
echo "# uncomment to force a specific HDMI mode (this will force VGA)" >> /boot/config.txt
echo "#hdmi_group=1" >> /boot/config.txt
echo "#hdmi_mode=1" >> /boot/config.txt
echo >> /boot/config.txt
echo "# uncomment to force a HDMI mode rather than DVI. This can make audio work in" >> /boot/config.txt
echo "# DMT (computer monitor) modes" >> /boot/config.txt
echo "#hdmi_drive=2" >> /boot/config.txt
echo >> /boot/config.txt
echo "# uncomment to increase signal to HDMI, if you have interference, blanking, or" >> /boot/config.txt
echo "# no display" >> /boot/config.txt
echo "#config_hdmi_boost=4" >> /boot/config.txt
echo >> /boot/config.txt
echo "# uncomment for composite PAL" >> /boot/config.txt
echo "#sdtv_mode=2" >> /boot/config.txt
echo >> /boot/config.txt
echo "#uncomment to overclock the arm. 700 MHz is the default." >> /boot/config.txt
echo "arm_freq=1000" >> /boot/config.txt
echo "core_freq=500" >> /boot/config.txt
echo "sdram_freq=500" >> /boot/config.txt
echo "over_voltage=2" >> /boot/config.txt
echo "dtoverlay=vc4-kms-v3d" >> /boot/config.txt
echo "device_tree=" >> /boot/config.txt

echo
sleep 3
echo "rewrite complete"
echo 
sleep 3
echo "cleaning system"
echo
apt-get -qq remove --purge -y
apt-get -qq autoremove --purge -y
apt-get -qq clean -y
echo
sleep 2
echo "Rewriting lightdm-gtk-greeter.conf and copying files"
mkdir /home/.files
cp ./.hidden/lxde-icon.png /usr/share/lxde/images/lxde-icon.png
cp ./.hidden/logout-banner.png /usr/share/lxde/images/logout-banner.png
cp ./.hidden/sbg.jpg /home/.files/sbg.jpg
cp ./.hidden/lightdm-gtk-greeter.conf /etc/lightdm/
echo
sleep 2
echo "rebooting"
echo 
sleep 5
echo `reboot`
exit 1
fi