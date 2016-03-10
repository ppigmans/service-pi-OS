#!/bin/sh


echo "This script is made by Patrick Pigmans for Servicenet ITF"
echo "Dit Script is gemaakt door Patrick Pigmans voor Servicenet ITF"
sleep 1
echo
echo "if you have not done so already please exit this script and type fdisk /dev/mmcblk0 and press the following keys one after another:"
echo "(To exit this script press ctrl + z)"
echo "D, 2, N, P, 2, ENTER, ENTER, W"
echo "then reboot and type resize2fs /dev/mmcblk0p2"
echo "then restart this script"
echo
echo "Als u dit nog niet heb gedaan sluit dit script af en typ het volgende: fdisk /dev/mmcblk0 vervolgens drukt u op de volgende toetsen in volgorde"
echo "(om het script af te sluiten drukt u op ctrl + z)"
echo "D, 2, N, P, 2, ENTER, ENTER, W"
echo "start vervolgens opnieuw op en typ resize2fs /dev/mmcblk0p2"
echo "Start vervolgens het script weer op"
echo
echo
sleep 5
read -p "Do you wish to launch the shell updater? (y/n)" -n 1 -r
echo "Wilt u de shell updater starten? (y/n)"
if [[ ! $REPLY =~ ^[Yy]$ ]]
then
echo "Not launching shell updater"
echo "Shell updater niet starten"
else
sh ./.hidden/shell-updater.sh
exit 1
fi

echo 

read -p "Do you wish to launch the updater OS in Dutch or English (Press Y for Dutch or N for English )" -n 1 -r
echo "Wilt u de OS updater starten in het Engels of Nederlands (druk op Y voor Nederlands of op N vor Engels)" 
if [[ ! $REPLY =~ ^[Nn]$ ]]
then
sh ./.hidden/service-pi-install-NL.sh
else
sh ./.hidden/service-pi-install-EN.sh
exit 1
fi

