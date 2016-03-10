#!/bin/sh
clear
echo "Welcome to the Shell upgrade script made by Patrick Pigmans for Servicenet ITF"
echo
echo "This script is combined with the service-pi-install scripts"
echo
echo
lsb_release -a
echo
echo "Above this line of text is your current shell version"
echo
sleep 2

read -p "Do you with to upgrade to a new shell version? (Y/N)"
if [[ ! $REPLY =~ ^[Nn]$ ]]
then
echo
echo "Launching upgrader"
echo
else
echo
echo "Exiting upgrader"
echo
exit 1
fi

read -p "Do you wish to install ubuntu shell 14.04.2 (other versions are available, to skip this one press N, to use this one, press Y)"
if [[ ! $REPLY =~ ^[Yy]$ ]]
then
echo
echo "skipping 14.04.2"
echo
else
echo
echo "you picked 14.04.2"
echo
sleep 2
echo "updating or downgrading to 14.04.2"
echo
echo "Stand by"
echo
cp /etc/apt/sources.list /etc/apt/sources.list.bk
rm -rf /etc/apt/sources.list

echo "deb http://ports.ubuntu.com/ trusty main restricted universe multiverse" >> /etc/apt/sources.list
echo "# deb-src http://ports.ubuntu.com/ trusty main restricted universe multiverse" >> /etc/apt/sources.list
echo >> /etc/apt/sources.list
echo "deb http://ports.ubuntu.com/ trusty-updates main restricted universe multiverse" >> /etc/apt/sources.list
echo "# deb-src http://ports.ubuntu.com/ trusty-updates main restricted universe multiverse" >> /etc/apt/sources.list
echo >> /etc/apt/sources.list
echo "deb http://ports.ubuntu.com/ trusty-security main restricted universe multiverse" >> /etc/apt/sources.list
echo "# deb-src http://ports.ubuntu.com/ trusty-security main restricted universe multiverse" >> /etc/apt/sources.list
echo >> /etc/apt/sources.list
echo "deb http://ports.ubuntu.com/ trusty-backports main restricted universe multiverse" >> /etc/apt/sources.list
echo "# deb-src http://ports.ubuntu.com/ trusty-backports main restricted universe multiverse" >> /etc/apt/sources.list

sleep 2
echo 
echo "rewrite successfull, now launching update"
echo
sleep 2
apt-get -q update -y
apt-get -q upgrade -y
apt-get -q dist-upgrade -y
apt-get -q -f install
apt-get -q install systemd-sysv
sleep 2
echo "Update successfull, welcome to 14.04.2"
echo
echo "rebooting"
echo
echo `reboot`
exit 1
fi

read -p "Do you wish to install ubuntu shell 14.10 (other versions are available, to skip this one press N, to use this one, press Y)"
if [[ ! $REPLY =~ ^[Yy]$ ]]
then
echo
echo "skipping 14.10"
echo
else
echo
echo "you picked 14.10"
echo
sleep 2
echo "updating or downgrading to 14.10"
echo
echo "Stand by"
echo
cp /etc/apt/sources.list /etc/apt/sources.list.bk
rm -rf /etc/apt/sources.list

echo "deb http://ports.ubuntu.com/ utopic main restricted universe multiverse" >> /etc/apt/sources.list
echo "# deb-src http://ports.ubuntu.com/ utopic main restricted universe multiverse" >> /etc/apt/sources.list
echo >> /etc/apt/sources.list
echo "deb http://ports.ubuntu.com/ utopic-updates main restricted universe multiverse" >> /etc/apt/sources.list
echo "# deb-src http://ports.ubuntu.com/ utopic-updates main restricted universe multiverse" >> /etc/apt/sources.list
echo >> /etc/apt/sources.list
echo "deb http://ports.ubuntu.com/ utopic-security main restricted universe multiverse" >> /etc/apt/sources.list
echo "# deb-src http://ports.ubuntu.com/ utopic-security main restricted universe multiverse" >> /etc/apt/sources.list
echo >> /etc/apt/sources.list
echo "deb http://ports.ubuntu.com/ trusty-backports main restricted universe multiverse" >> /etc/apt/sources.list
echo "# deb-src http://ports.ubuntu.com/ trusty-backports main restricted universe multiverse" >> /etc/apt/sources.list

sleep 2
echo 
echo "rewrite successfull, now launching update"
echo
sleep 2
apt-get -q update -y
apt-get -q upgrade -y
apt-get -q dist-upgrade -y
apt-get -q -f install
apt-get -q install systemd-sysv
sleep 2
echo "Update successfull, welcome to 14.10"
echo
echo "rebooting"
echo
echo `reboot`
exit 1
fi

echo
read -p "Do you wish to install buntu shell 15.04 (other versions are available, to skip this one press N, to use this one, press Y)"
if [[ ! $REPLY =~ ^[Yy]$ ]]
then
echo
echo "skipping 15.04"
echo
else
echo
echo "you picked 15.04"
echo
sleep 2
echo "updating or downgrading to 15.04"
echo
echo "Stand by"
cp /etc/apt/sources.list /etc/apt/sources.list.bk
rm -rf /etc/apt/sources.list

echo "deb http://ports.ubuntu.com/ vivid main restricted universe multiverse" >> /etc/apt/sources.list
echo "# deb-src http://ports.ubuntu.com/ vivid main restricted universe multiverse" >> /etc/apt/sources.list
echo >> /etc/apt/sources.list
echo "deb http://ports.ubuntu.com/ vivid-updates main restricted universe multiverse" >> /etc/apt/sources.list
echo "# deb-src http://ports.ubuntu.com/ vivid-updates main restricted universe multiverse" >> /etc/apt/sources.list
echo >> /etc/apt/sources.list
echo "deb http://ports.ubuntu.com/ vivid-security main restricted universe multiverse" >> /etc/apt/sources.list
echo "# deb-src http://ports.ubuntu.com/ vivid-security main restricted universe multiverse" >> /etc/apt/sources.list
echo >> /etc/apt/sources.list
echo "deb http://ports.ubuntu.com/ vivid-backports main restricted universe multiverse" >> /etc/apt/sources.list
echo "# deb-src http://ports.ubuntu.com/ vivid-backports main restricted universe multiverse" >> /etc/apt/sources.list

sleep 2
echo 
echo "rewrite successfull, now launching update"
echo
sleep 2
apt-get -q update -y
apt-get -q upgrade -y
apt-get -q dist-upgrade -y
sleep 2
echo "Update successfull, welcome to 15.04"
echo
echo "rebooting"
echo `reboot`
exit 1
fi

echo
read -p "Do you wish to install buntu shell 15.10 (other versions are available, to skip this one press N, to use this one, press Y)"
if [[ ! $REPLY =~ ^[Yy]$ ]]
then
echo
echo "skipping 15.10"
echo
else
echo
echo "you picked 15.10"
echo
sleep 2
echo
echo "updating or downgrading to 15.10"
echo
echo "Stand by"
cp /etc/apt/sources.list /etc/apt/sources.list.bk
rm -rf /etc/apt/sources.list

echo "deb http://ports.ubuntu.com/ wily main restricted universe multiverse" >> /etc/apt/sources.list
echo "# deb-src http://ports.ubuntu.com/ wily main restricted universe multiverse" >> /etc/apt/sources.list
echo >> /etc/apt/sources.list
echo "deb http://ports.ubuntu.com/ wily-updates main restricted universe multiverse" >> /etc/apt/sources.list
echo "# deb-src http://ports.ubuntu.com/ wily-updates main restricted universe multiverse" >> /etc/apt/sources.list
echo >> /etc/apt/sources.list
echo "deb http://ports.ubuntu.com/ wily-security main restricted universe multiverse" >> /etc/apt/sources.list
echo "# deb-src http://ports.ubuntu.com/ wily-security main restricted universe multiverse" >> /etc/apt/sources.list
echo >> /etc/apt/sources.list
echo "deb http://ports.ubuntu.com/ wily-backports main restricted universe multiverse" >> /etc/apt/sources.list
echo "# deb-src http://ports.ubuntu.com/ wily-backports main restricted universe multiverse" >> /etc/apt/sources.list

sleep 2
echo 
echo "rewrite successfull, now launching update"
echo
sleep 2
apt-get -q update -y
apt-get -q upgrade -y
apt-get -q dist-upgrade -y
apt-get -q -f install
apt-get -q install systemd-sysv
sleep 2
echo "Update successfull, welcome to 15.10"
echo
echo "rebooting"
echo `reboot`
exit 1
fi

echo
echo "WARNING UBUNTU 16.04 XENIAL IS CURRENTLY IN BETA AND UNSTABLE INSTALL AT YOUR OWN RISK"
read -p "Do you wish to install buntu shell 16.04 (warning: expirimental) (no other versions available after this one, if you press N you will exit this prompt, press Y to install 16.04 EXPIRIMENTAL)"
if [[ ! $REPLY =~ ^[Yy]$ ]]
then
echo
echo "skipping 16.04"
echo
else
echo
echo "you picked 16.04"
echo
sleep 2
echo "updating or downgrading to 16.04"
echo
echo "Stand by"
cp /etc/apt/sources.list /etc/apt/sources.list.bk
rm -rf /etc/apt/sources.list

echo "deb http://ports.ubuntu.com/ xenial main restricted universe multiverse" >> /etc/apt/sources.list
echo "# deb-src http://ports.ubuntu.com/ xenial main restricted universe multiverse" >> /etc/apt/sources.list
echo >> /etc/apt/sources.list
echo "deb http://ports.ubuntu.com/ xenial-updates main restricted universe multiverse" >> /etc/apt/sources.list
echo "# deb-src http://ports.ubuntu.com/ xenial-updates main restricted universe multiverse" >> /etc/apt/sources.list
echo >> /etc/apt/sources.list
echo "deb http://ports.ubuntu.com/ xenial-security main restricted universe multiverse" >> /etc/apt/sources.list
echo "# deb-src http://ports.ubuntu.com/ xenial-security main restricted universe multiverse" >> /etc/apt/sources.list
echo >> /etc/apt/sources.list
echo "deb http://ports.ubuntu.com/ xenial-backports main restricted universe multiverse" >> /etc/apt/sources.list
echo "# deb-src http://ports.ubuntu.com/ xenial-backports main restricted universe multiverse" >> /etc/apt/sources.list

sleep 2
echo 
echo "rewrite successfull, now launching update"
echo
sleep 2
apt-get -q update -y
apt-get -q upgrade -y
apt-get -q dist-upgrade -y
apt-get -q -f install
apt-get -q install systemd-sysv
sleep 2
echo "Update successfull, welcome to 16.04 (expirimental)"
echo
echo "rebooting"
echo `reboot`
exit 1
fi
