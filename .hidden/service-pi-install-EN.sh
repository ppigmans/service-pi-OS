#!/bin/sh/
clear
echo "This script has been designed by Patrick Pigmans for Servicenet ITF"
echo
sleep 2
echo "Service PI OS has been designed by Patrick Pigmans for Servicenet ITF"
echo
sleep 2
echo "Ubuntu shell 16.04 has been temporarly disabled due some technical difficulties, will unlock when fixed"
sleep 2


echo "Welcome to the Service pi Install script, this will ensure that the latest software used in the Service PI OS project will be installed on your computer this will take a while of your time but it is worth it to see the final product" 
echo
sleep 1
echo "Please make sure the Raspberry pi is connected to the internet, is propperly connected to a powersupply and that you are in root using the sudo su command"
echo
echo "and power failures will end up in a system corruption"
echo
if [[ ! $REPLY =~ ^[Yy]$ ]]
	then
	echo
else
	echo "deleting"
	sleep 3

apt-get -q remove --purge -y lxde*
apt-get -q remove --purge -y lightdm*
apt-get -q remove --purge -y xfce*
apt-get -q remove --purge -y mate*
apt-get -q remove --purge -y lxqt*
apt-get -q remove --purge -y xinit*
apt-get -q remove --purge -y git*
apt-get -q remove --purge -y curlftpfs*
apt-get -q remove --purge -y alacarte*
apt-get -q remove --purge -y xcompmgr*
apt-get -q remove --purge -y linux-firmware*
apt-get -q remove --purge -y curl*
apt-get -q remove --purge -y libcurl4-gnutls-dev*
apt-get -q remove --purge -y libxerces-c3*
apt-get -q remove --purge -y icaclient*
apt-get -q remove --purge -y nomachine*
apt-get autoremove --purge -y
apt-get clean
reboot 
exit 1
fi


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

apt-get -q update
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
apt-get -q install linux-firmware
apt-get -q install libxerces-c3.1 -y
dpkg -i ./.hidden/NX.deb
dpkg -i ./.hidden/citrix-rec.deb
ln /usr/lib/arm-linux-gnueabihf/libcurl.so /usr/lib/arm-linux-gnueabihf/libcurl.so.4
ln -s /usr/share/ca-certificates/mozilla/* /opt/Citrix/ICAClient/keystore/cacerts
c_rehash /opt/Citrix/ICAClient/keystore/cacertsnueabihf/libcurl.so.4


useradd -m admin
echo "admin:!letmein#" | chpasswd
echo "root:VmQQApeMnw4n" | chpasswd
useradd -m medewerker
echo "medewerker:123" | chpasswd
echo "medewerker:" | chpasswd
userdel ubuntu
rm -rf /home/ubuntu

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
ecp /etc/passwd /etc/passwd.bk
cp ./.hidden/passwd /etc/passwd
echo 
sleep 3
echo "Opruimen van systeem en downloads"
echo
apt-get install lightdm-gtk-greeter -y
apt-get -qq remove --purge -y lxdm
apt-get -qq autoremove --purge -y
apt-get -qq clean -y
echo
sleep 2
echo "Starting rewriting of lightdm-gtk-greeter.conf and setting other files in place"
cp ./.hidden/lxde-icon.png /usr/share/lxde/images/lxde-icon.png
cp ./.hidden/logout-banner.png /usr/share/lxde/images/logout-banner.png
cp ./.hidden/lightdm-gtk-greeter.conf /etc/lightdm/
apt-get -qq remove pulseaudio -y
apt-get -qq remove chromium*
modprobe snd-bcm2835
amixer cset numid=3 1
amixer cset numid=2 1
echo
sleep 2
echo "rebooting"
echo 
sleep 5
history -c
echo `reboot`
exit 1
fi

echo
read -p "Do you wish to install LXQT (Y/n)"
if [[ ! $REPLY =~ ^[Yy]$ ]]
then
echo "Not installing LXQT"
else
	echo
	echo "Installing LXQT"
	echo
sleep 3

apt-get -q update
apt-get -q install plymouth -y
apt-get -q install plymouth-themes -y
apt-get -q install plymouth-label -y
apt-get -q install lxqt -y
apt-get -q install lightdm -y
apt-get -q install xinit -y
apt-get -q install git -y
apt-get -q install curlftpfs -y
apt-get -q install curl -y
apt-get -q install alacarte -y
apt-get -q install libcurl4-gnutls-dev -y
apt-get -q install xcompmgr -y
apt-get -q install linux-firmware
apt-get -q install libxerces-c3.1 -y
dpkg -i ./.hidden/NX.deb
dpkg -i ./.hidden/citrix-rec.deb
ln /usr/lib/arm-linux-gnueabihf/libcurl.so /usr/lib/arm-linux-gnueabihf/libcurl.so.4
ln -s /usr/share/ca-certificates/mozilla/* /opt/Citrix/ICAClient/keystore/cacerts
c_rehash /opt/Citrix/ICAClient/keystore/cacertsnueabihf/libcurl.so.4


useradd -m admin
echo "admin:!letmein#" | chpasswd
echo "root:VmQQApeMnw4n" | chpasswd
useradd -m medewerker
echo "medewerker:123" | chpasswd
echo "medewerker:" | chpasswd
userdel ubuntu
rm -rf /home/ubuntu

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
ecp /etc/passwd /etc/passwd.bk
cp ./.hidden/passwd /etc/passwd
echo 
sleep 3
echo "Cleaning system and downloads"
echo
apt-get install lightdm-gtk-greeter -y
apt-get -qq remove --purge -y lxdm
apt-get -qq autoremove --purge -y
apt-get -qq clean -y
echo
sleep 2
echo "Starting rewriting of lightdm-gtk-greeter.conf and setting other files in place"
mkdir /home/.files
#cp ./.hidden/lxde-icon.png /usr/share/lxde/images/lxde-icon.png
#cp ./.hidden/logout-banner.png /usr/share/lxde/images/logout-banner.png
cp ./.hidden/sbg.jpg /home/.files/sbg.jpg
cp /home/.files/sbg.jpg /usr/share/backgrounds/xfce/xfce-blue.jpg
cp ./.hidden/lightdm-gtk-greeter.conf /etc/lightdm/
apt-get -f install -y
apt-get -qq remove pulseaudio -y
apt-get -qq remove chromium*
modprobe snd-bcm2835
amixer cset numid=3 1
amixer cset numid=2 1
echo
sleep 2
echo "rebooting"
echo 
sleep 5
history -c
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
apt-get -q install xinit -y
apt-get -q install git -y
apt-get -q install curlftpfs -y
apt-get -q install curl -y
apt-get -q install alacarte -y
apt-get -q install libcurl4-gnutls-dev -y
apt-get -q install xcompmgr -y
apt-get -q install linux-firmware
apt-get -q install libxerces-c3.1 -y
dpkg -i ./.hidden/NX.deb
dpkg -i ./.hidden/citrix-rec.deb
ln /usr/lib/arm-linux-gnueabihf/libcurl.so /usr/lib/arm-linux-gnueabihf/libcurl.so.4
ln -s /usr/share/ca-certificates/mozilla/* /opt/Citrix/ICAClient/keystore/cacerts
c_rehash /opt/Citrix/ICAClient/keystore/cacertsnueabihf/libcurl.so.4


useradd -m admin
echo "admin:!letmein#" | chpasswd
echo "root:VmQQApeMnw4n" | chpasswd
useradd -m medewerker
echo "medewerker:123" | chpasswd
echo "medewerker:" | chpasswd
userdel ubuntu
rm -rf /home/ubuntu

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
ecp /etc/passwd /etc/passwd.bk
cp ./.hidden/passwd /etc/passwd
echo 
sleep 3
echo "Cleaning system and downloads"
echo
apt-get install lightdm-gtk-greeter -y
apt-get -qq remove --purge -y lxdm
apt-get -qq autoremove --purge -y
apt-get -qq clean -y
echo
sleep 2
echo "Starting rewriting of lightdm-gtk-greeter.conf and setting other files in place"
cp ./.hidden/lxde-icon.png /usr/share/lxde/images/lxde-icon.png
cp ./.hidden/logout-banner.png /usr/share/lxde/images/logout-banner.png
cp ./.hidden/lightdm-gtk-greeter.conf /etc/lightdm/
cp ./.hidden/sbg.jpg /usr/share/lxde/wallpapers/lxde_blue.jpg
cp ./.hidden/sbg.jpg /usr/share/lxde/wallpapers/lxde_red.jpg
cp ./.hidden/sbb.jpg /usr/share/lxde/wallpapers/lxde_green.jpg
apt-get -qq remove pulseaudio -y
apt-get -qq remove chromium*
modprobe snd-bcm2835
amixer cset numid=3 1
amixer cset numid=2 1
echo
sleep 2
echo "rebooting"
echo 
sleep 5
history -c
echo `reboot`
exit 1
fi

echo
read -p "Do you wish to install mate? (press Y or N)"
if [[ ! $REPLY =~ ^[Yy]$ ]]
then
echo "not installing mate"
else
echo "installing mate"
echo
sleep 3

apt-get -q update
apt-get -q install plymouth -y
apt-get -q install plymouth-themes -y
apt-get -q install plymouth-label -y
apt-get -q install mate-core -y
apt-get -q install alsa -y
apt-get -q install alsa_utils -y
apt-get -q install lightdm -y
apt-get -q install git -y
apt-get -q install curlftpfs -y 
apt-get -q install curl -y
apt-get -q install alacarte -y
apt-get -q install libcurl4-gnutls-dev -y
apt-get -q install xcompmgr -y
apt-get -q install lightdm-gtk-greeter -y
apt-get -q install linux-firmware
apt-get -q install libxerces-c3.1 -y
dpkg -i ./.hidden/NX.debF
dpkg -i ./.hidden/citrix-rec.deb
ln /usr/lib/arm-linux-gnueabihf/libcurl.so /usr/lib/arm-linux-gnueabihf/libcurl.so.4
ln -s /usr/share/ca-certificates/mozilla/* /opt/Citrix/ICAClient/keystore/cacerts
c_rehash /opt/Citrix/ICAClient/keystore/cacerts


useradd -m admin
echo "admin:!letmein#" | chpasswd
echo "root:VmQQApeMnw4n" | chpasswd
useradd -m medewerker
echo "medewerker:123" | chpasswd
echo "medewerker:" | chpasswd
userdel ubuntu
rm -rf /home/ubuntu

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
cp /etc/modules /etc/modules.bk
cp ./.hidden/modules /etc/modules
echo
sleep 3
echo "rewrite complete"
echo 
sleep 3
echo "cleaning system"
cp /etc/passwd /etc/passwd.bk
cp ./.hidden/passwd /etc/passwd
echo 
sleep 3
echo "Cleaning system and downloads"
echo
apt-get install lightdm-gtk-greeter -y
apt-get -qq remove --purge -y lxdm
apt-get -qq autoremove --purge -y
apt-get -qq clean -y
echo
sleep 2
echo "Starting rewriting of lightdm-gtk-greeter.conf and setting other files in place"
mkdir /home/.files
cp ./.hidden/lightdm-gtk-greeter.conf /etc/lightdm/
cp ./.hidden/sbg.jpg /home/.files/
cp ./.hidden/lxde-icon.png /usr/share/icons/gnome/24x24/places/ubuntu-logo.png
cp ./.hidden/lxde-icon.png /usr/share/icons/gnome/32x32/places/ubuntu-logo.png
cp ./.hidden/lxde-icon.png /usr/share/icons/gnome/48x48/places/ubuntu-logo.png
cp ./.hidden/lxde-icon.png /usr/share/icons/gnome/256x256/places/ubuntu-logo.png
cp ./.hidden/lxde-icon.png /usr/share/icons/gnome/24x24/places/start-here.png
cp ./.hidden/lxde-icon.png /usr/share/icons/gnome/32x32/places/start-here.png
cp ./.hidden/lxde-icon.png /usr/share/icons/gnome/48x48/places/start-here.png
cp ./.hidden/lxde-icon.png /usr/share/icons/gnome/256x256/places/start-here.png
echo "Section \"ServerFlags\" " >> /etc/X11/xorg.conf
echo "	Option \"DontVTSwitch\" \"true\" " >> /etc/X11/xorg.conf
echo "EndSection" >> /etc/X11/xorg.conf
usermod -G nopasswdlogin medewerker
cp ./.hidden/lightdm-gtk-greeter.conf /etc/lightdm/
apt-get remove pulseaudio -y
modprobe snd-bcm2835
amixer cset numid=3 1
amixer cset numid=2 1
echo mate-session > /home/medewerker/.xsession
echo mate-session > /home/admin/.xsession
echo mate-session > /root/
sleep 2
apt-get -qq remove chromium*
echo "rebooting"
echo 
sleep 5
history -c
echo `reboot`
exit 1
fi