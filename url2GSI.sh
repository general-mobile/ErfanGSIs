#!/bin/bash

url=$1
srctype=$2

mkdir downloads

wget -U "Mozilla/5.0" https://dl.google.com/developers/android/qt/images/gsi/gsi_gms_arm64-exp-QPP5.190530.016-5733663.zip -O downloads/temp.zip
./zip2img.sh downloads/temp.zip
mkdir system
mount cache/system.img system
./make.sh system $srctype AB

ls -ln out/
