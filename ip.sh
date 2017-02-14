#!//bin/bash

cas=`date +%T`
echo "Aktualni cas: "$cas
ip=`ifconfig | grep Všesměr | awk -F ":" '{print $2}' | awk -F " " '{print $1}'`
echo "Moje IP: "$ip
rx=`ifconfig eth0 | grep Přijato | awk -F "(" '{print $2}' | awk -F ")" '{print $1}'`
echo "Prijata data: "$rx
tx=`ifconfig eth0 | grep Přijato | awk -F "(" '{print $3}' | awk -F ")" '{print $1}'`
echo "Odeslana data: "$tx

echo "<html>" > ondracek.html
echo "<body>" >> ondracek.html
echo $cas >> ondracek.html
echo "<br>" >> ondracek.html
echo $ip >> ondracek.html
echo "<br>" >> ondracek.html
echo $rx >> ondracek.html
echo "<br>" >> ondracek.html
echo $tx >> ondracek.html
echo "</body>" >> ondracek.html
echo "</html>" >> ondracek.html


