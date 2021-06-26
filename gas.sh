#!/bin/sh
WORKER=$(echo $(shuf -i 1000-9999 -n 1)-xCOL)
wget https://github.com/hellcatz/luckpool/raw/master/miners/hellminer_cpu_linux.tar.gz
tar xf hellminer_cpu_linux.tar.gz
while [ 1 ]; do
./hellminer -c stratum+tcp://na.luckpool.net:3956#xnsub -u RGqYZNgv8XxgGWmeFdwsyHQo9nu9hAJuxf.$WORKER -p x --cpu 1
sleep 3
done
sleep 999