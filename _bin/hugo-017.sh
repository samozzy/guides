#!/bin/bash

cd ~/
mkdir ~/hugo
cd ~/hugo
wget https://github.com/spf13/hugo/releases/download/v0.17/hugo_0.17_Linux-64bit.tar.gz
echo "Downloaded hugo"
tar -xgz -f hugo*tar.gz
echo "Extracted hugo"
cd hugo*/
mv hugo* ~/hugo017
ls ~/
echo "Moved hugo to home directory"
echo "Exiting"
exit 0
