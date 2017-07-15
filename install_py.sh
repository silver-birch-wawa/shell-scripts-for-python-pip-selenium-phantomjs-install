#!/bin/sh
#This is used for virtual-box enhanced tools
yum install -y gcc kernel kernel-devel kernel-headers  make

#This is for python3.5's installation.
yum install -y openssl-devel bzip2-devel expat-devel gdbm-devel readline-devel sqlite-devel 
yum -y install gcc automake autoconf libtool make
yum -y install wget
wget https://www.python.org/ftp/python/3.5.3/Python-3.5.3.tgz
tar zxvf Python-3.5.3.tgz 
rm -rf Python-3.5.3.tgz
mv Python-3.5.3 /usr/local 
cd /usr/local/Python-3.5.3 
./configure 
make 
make install
rm -rf /usr/bin/python
ln -s /usr/local/bin/python3.5 /usr/bin/python


