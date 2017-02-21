#!/bin/bash
cas=`date +%T`
ip=`ifconfig | grep Všesměr | awk -F ":" '{print $2}' | awk -F " " '{print $1}'`
rx=`ifconfig eth0 | grep Přijato | awk -F "(" '{print $2}' | awk -F ")" '{print $1}'`
tx=`ifconfig eth0 | grep Přijato | awk -F "(" '{print $3}' | awk -F ")" '{print $1}'`
log=`users | wc -w`
gb=`df -h | grep sda1 | awk -F " " '{print1}'`

echo "Aktualni cas: "$cas >> /home/student/Plocha/skripty/index.html
echo "Moje IP: "$ip >> /home/student/Plocha/skripty/index.html
echo "Prijata data: "$rx >> /home/student/Plocha/skripty/index.html
echo "Odeslaná data: "$tx >> /home/student/Plocha/skripty/index.html
echo "Pocet prihlasenych uzivatelu: "$log >> /home/student/Plocha/skripty/index.html
echo "Kapacita disku: "$gb >> /home/student/Plocha/skripty/index.html

echo "<br><br>" >> /home/student/Plocha/skripty/index.html
