#!/bin/sh
#install pip3
yum install openssl-devel   -y
yum install zlib-devel  -y
yum install zlib-devel bzip2-devel openssl-devel ncurses-devel sqlite-devel
wget --no-check-certificate https://pypi.python.org/packages/source/s/setuptools/setuptools-19.6.tar.gz#md5=c607dd118eae682c44ed146367a17e26
tar -zxvf setuptools-19.6.tar.gz
rm -rf  setuptools-19.6.tar.gz
cd setuptools-19.6
python3 setup.py build
python3 setup.py install
cd ../
rm -rf setuptools-19.6.tar.gz

#install pip3
wget --no-check-certificate https://pypi.python.org/packages/source/p/pip/pip-8.0.2.tar.gz#md5=3a73c4188f8dbad6a1e6f6d44d117eeb 
tar -zxvf pip-8.0.2.tar.gz 
cd pip-8.0.2 
python3 setup.py build 
python3 setup.py install 
#更新为最新版 
pip install --upgrade pip
cd ../
rm -rf pip-8.0.2.tar.gz
