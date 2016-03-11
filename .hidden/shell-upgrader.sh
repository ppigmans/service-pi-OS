#!/bin/sh
clear
echo "Welcome to the Shell upgrade script made by Patrick Pigmans for Servicenet ITF"
echo
echo "Welkom bij het Shell upgrade script gemaakt door Patrick Pigmans voor Servicenet ITF"
echo
echo "This script is combined with the service-pi-install scripts"
echo
echo "Dit script werkt samen met service-pi-install scripts"
echo
lsb_release -a
echo
echo "Above this line of text is your current shell version"
echo "De text hier boven is de huidige shell versie"
echo 
sleep 2
echo "Please note that the Shell version 16.04 is Experimental"
echo "let op, Shell versie 16.04 is experimenteel"
sleep 3
read -p "Do you with to upgrade to a new shell version? (Y/N)"
echo "Wilt u upgraden naar een nieuwe shell versie? (Y/N)"
if [[ ! $REPLY =~ ^[Nn]$ ]]
then
echo
echo "Launching upgrader"
echo "upgrader starten"
else
echo
echo "Exiting upgrader"
echo "upgrader afsluiten"
exit 1
fi

read -p "Do you wish to install ubuntu shell 14.04.2 (other versions are available, to skip this one press N, to use this one, press Y)"
echo "Wilt u ubuntu shell 14.04.2 installeren? (er zijn andere versies beschikbaar, druk op N om deze versie over te slaan, om deze versie te gebruiken druk op Y)"
if [[ ! $REPLY =~ ^[Yy]$ ]]
then
echo
echo "skipping 14.04.2"
echo "14.04.2 overslaan"
else
echo
echo "you picked 14.04.2"
echo "14.04.2 gekozen"
sleep 2
echo
echo "upgrading or downgrading to 14.04.2"
echo "Upgraden of downgraden naar 14.04.2"
echo
echo "Stand by"
echo "Wachten AUB"
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
echo "rewrite successfull, now launching upgrade"
echo "Herschrijving succesvol afgerond, upgrade starten"
sleep 2
apt-get -q update -y
apt-get -q upgrade -y
apt-get -q -f install
apt-get -q install systemd-sysv
apt-get -q remove lxde -y
apt-get -q remove lightdm -y
apt-get -q remove xinit -y
apt-get -q remove git -y
apt-get -q remove curlftpfs -y
apt-get -q remove curl -y
apt-get -q remove alacarte -y
apt-get -q remove libcurl4-gnutls-dev -y
apt-get -q remove xcompmgr -y
apt-get -q remove lightdm-gtk-greeter -y
apt-get -q remove linux-firmware -y
apt-get -q remove xrdp -y
apt-get -q remove xfce4 -y
apt-get -q install network-manager -y
apt-get -q autoremove --purge -y
apt-get clean
apt-get -q dist-upgrade
sleep 2
echo "upgrade successfull, welcome to 14.04.2"
echo "upgrade gelukt, welkom bij 14.04.2"
echo
echo "rebooting"
echo "Herstarten"
echo
echo `reboot`
exit 1
fi

read -p "Do you wish to install ubuntu shell 14.10 (other versions are available, to skip this one press N, to use this one, press Y)"
echo  "Wilt u ubuntu shell 14.10 installeren? (er zijn andere versies beschikbaar, druk op N om deze versie over te slaan, om deze versie te gebruiken druk op Y)"
if [[ ! $REPLY =~ ^[Yy]$ ]]
then
echo
echo "skipping 14.10"
echo "14.10 overslaan"
else
echo
echo "you picked 14.10"
echo "14.10 gekozen"
sleep 2
echo
echo "updgrading or downgrading to 14.10"
echo "upgraden of downgraden naar 14.10"
echo
echo "Stand by"
echo "Wachten AUB"
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
echo "rewrite successfull, now launching upgrade"
echo "Herschrijving succesvol afgerond, upgrade starten"
sleep 2
apt-get -q update -y
apt-get -q upgrade -y
apt-get -q -f install
apt-get -q install systemd-sysv
apt-get -q remove lxde -y
apt-get -q remove lightdm -y
apt-get -q remove xinit -y
apt-get -q remove git -y
apt-get -q remove curlftpfs -y
apt-get -q remove curl -y
apt-get -q remove alacarte -y
apt-get -q remove libcurl4-gnutls-dev -y
apt-get -q remove xcompmgr -y
apt-get -q remove lightdm-gtk-greeter -y
apt-get -q remove linux-firmware -y
apt-get -q remove xrdp -y
apt-get -q remove xfce4 -y
apt-get -q install network-manager -y
apt-get -q autoremove --purge -y
apt-get clean
apt-get -q dist-upgrade
sleep 2
echo "upgrade successfull, welcome to 14.10"
echo "upgrade gelukt, welkom bij 14.10"
echo
echo "rebooting"
echo "Herstarten"
echo `reboot`
exit 1
fi

echo
read -p "Do you wish to install ubuntu shell 15.04 (other versions are available, to skip this one press N, to use this one, press Y)"
echo  "Wilt u ubuntu shell 15.04 installeren? (er zijn andere versies beschikbaar, druk op N om deze versie over te slaan, om deze versie te gebruiken druk op Y)"
if [[ ! $REPLY =~ ^[Yy]$ ]]
then
echo
echo "skipping 15.04"
echo "15.04 overslaan"
else
echo
echo "you picked 15.04"
echo "15.04 gekozen"
sleep 2
echo "updating or downgrading to 15.04"
echo "upgraden of downgraden naar 15.04"
echo
echo "Stand by"
echo "wachten AUB"
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
echo "rewrite successfull, now launching upgrade"
echo "herschrijving succesvol afgerond, upgrade starten"
echo
sleep 2
apt-get -q update -y
apt-get -q upgrade -y
apt-get -q -f install
apt-get -q install systemd-sysv
apt-get -q remove lxde -y
apt-get -q remove lightdm -y
apt-get -q remove xinit -y
apt-get -q remove git -y
apt-get -q remove curlftpfs -y
apt-get -q remove curl -y
apt-get -q remove alacarte -y
apt-get -q remove libcurl4-gnutls-dev -y
apt-get -q remove xcompmgr -y
apt-get -q remove lightdm-gtk-greeter -y
apt-get -q remove linux-firmware -y
apt-get -q remove xrdp -y
apt-get -q remove xfce4 -y
apt-get -q install network-manager -y
apt-get -q autoremove --purge -y
apt-get clean
apt-get -q dist-upgrade
sleep 2
echo "upgrade successfull, welcome to 15.04"
echo "upgrade gelukt, welkom bij 15.04"
echo
echo "rebooting"
echo "Herstarten"
echo `reboot`
exit 1
fi

echo
read -p "Do you wish to install buntu shell 15.10 (other versions are available, to skip this one press N, to use this one, press Y)"
echo  "Wilt u ubuntu shell 15.10 installeren? (er zijn andere versies beschikbaar, druk op N om deze versie over te slaan, om deze versie te gebruiken druk op Y)"
if [[ ! $REPLY =~ ^[Yy]$ ]]
then
echo
echo "skipping 15.10"
echo "15.10 overslaan"
else
echo
echo "you picked 15.10"
echo "15.10 gekozen"
sleep 2
echo
echo "upgrading or downgrading to 15.10"
echo "upgraden of downgraden naar 15.10"
echo
echo "Stand by"
echo "wachten AUB"
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
echo "rewrite successfull, now launching upgrade"
echo "herschrijving succesvol afgerond, upgrade starten"
echo
sleep 2
apt-get -q update -y
apt-get -q upgrade -y
apt-get -q -f install
apt-get -q install systemd-sysv
apt-get -q remove lxde -y
apt-get -q remove lightdm -y
apt-get -q remove xinit -y
apt-get -q remove git -y
apt-get -q remove curlftpfs -y
apt-get -q remove curl -y
apt-get -q remove alacarte -y
apt-get -q remove libcurl4-gnutls-dev -y
apt-get -q remove xcompmgr -y
apt-get -q remove lightdm-gtk-greeter -y
apt-get -q remove linux-firmware -y
apt-get -q remove xrdp -y
apt-get -q remove xfce4 -y
apt-get -q install network-manager -y
apt-get -q autoremove --purge -y
apt-get clean
apt-get -q dist-upgrade
sleep 2
echo "upgrade successfull, welcome to 15.10"
echo "upgrade gelukt, welkom bij 15.10"
echo
echo "rebooting"
echo "Herstarten"
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
echo "deb http://ports.ubuntu.com/ xenial-upgrades main restricted universe multiverse" >> /etc/apt/sources.list
echo "# deb-src http://ports.ubuntu.com/ xenial-upgrades main restricted universe multiverse" >> /etc/apt/sources.list
echo >> /etc/apt/sources.list
echo "deb http://ports.ubuntu.com/ xenial-security main restricted universe multiverse" >> /etc/apt/sources.list
echo "# deb-src http://ports.ubuntu.com/ xenial-security main restricted universe multiverse" >> /etc/apt/sources.list
echo >> /etc/apt/sources.list
echo "deb http://ports.ubuntu.com/ xenial-backports main restricted universe multiverse" >> /etc/apt/sources.list
echo "# deb-src http://ports.ubuntu.com/ xenial-backports main restricted universe multiverse" >> /etc/apt/sources.list

sleep 2
echo 
echo "rewrite successfull, now launching upgrade"
echo
sleep 2
apt-get -q update -y
apt-get -q upgrade -y
apt-get -q -f install
apt-get -q install systemd-sysv
apt-get -q remove lxde -y
apt-get -q remove lightdm -y
apt-get -q remove xinit -y
apt-get -q remove git -y
apt-get -q remove curlftpfs -y
apt-get -q remove curl -y
apt-get -q remove alacarte -y
apt-get -q remove libcurl4-gnutls-dev -y
apt-get -q remove xcompmgr -y
apt-get -q remove lightdm-gtk-greeter -y
apt-get -q remove linux-firmware -y
apt-get -q remove xrdp -y
apt-get -q remove xfce4 -y
apt-get -q install network-manager -y
apt-get -q autoremove --purge -y
apt-get clean
apt-get -q dist-upgrade
sleep 2
echo "upgrade successfull, welcome to 16.04 (expirimental)"
echo
echo "rebooting"
echo `reboot`
exit 1
fi