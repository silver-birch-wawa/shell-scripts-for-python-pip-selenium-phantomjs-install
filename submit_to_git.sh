#!/bin/sh
git config --global user.name "silver-birch-wawa"
git config --global user.email "3193151055@qq.com"
git init
git add .
git commit -m "date"
git remote add origin git@github.com:silver-birch-wawa/python-web-develope.git
git push origin master
#上传失败:
git pull --rebase origin master
#然后再
git push -u origin master

