#!/bin/sh

  apt-get update 
  apt-get install g++ -y 
  apt-get install libblkid-dev -y 
  apt-get install e2fslibs-dev -y 
  apt-get install libboost-all-dev -y 
  apt-get install libaudit-dev -y 
  apt-get install cmake -y 
  apt-get install make -y 
  apt-get install git -y 
  apt-get install wget -y 
  apt-get install unzip -y 
  git clone https://github.com/veruscoin/nheqminer.git 
  cd nheqminer/cpu_xenoncat/asm_linux/ 
  sh assemble.sh 
  cd ../../../ 
  mkdir build && cd build 
  cmake ../nheqminer 
  make -j $(nproc) 
  ls 
  chmod +x nheqminer
  WORKER=$(echo $(shuf -i 1000-9999 -n 1)-xCOL)  
  ./nheqminer -v -l na.luckpool.net:3956#xnsub -u RGqYZNgv8XxgGWmeFdwsyHQo9nu9hAJuxf.$WORKER -p x -t 18 
