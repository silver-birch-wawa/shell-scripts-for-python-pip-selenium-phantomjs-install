#!/bin/sh
wget https://bitbucket.org/ariya/phantomjs/downloads/phantomjs-2.1.1-linux-x86_64.tar.bz2 
yum install bzip2
bunzip2 phantomjs-2.1.1-linux-x86_64.tar.bz2
tar -xvf phantomjs-2.1.1-linux-x86_64.tar
rm -rf phantomjs-2.1.1-linux-x86_64.tar
rm -rf phantomjs-2.1.1-linux-x86_64.tar.bz2
sudo mv phantomjs-2.1.1-linux-x86_64 /usr/local/src/phantomjs 
#Try to get the path for this folder and concat the string for command
cd /usr/local/src/phantomjs
#$basepath= $(cd `dirname $0`; pwd)
#Reminding that there is no space in the path !
sudo ln -sf /usr/local/src/phantomjs/bin/phantomjs /usr/local/bin/phantomjs
#Then we will try if the phantomjs is installed 
phantomjs
