#!/bin/bash

mkdir ~/hugo
cd hugo
wget https://github.com/spf13/hugo/releases/download/v0.17/hugo_0.17_Linux-64bit.tar.gz
tar -xgzf hugo*tar.gz
cd hugo*/
mv hugo* ~/
