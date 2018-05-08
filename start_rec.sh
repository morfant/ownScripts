#!/bin/bash
# Record streaming audio

echo 'Start to record streaming audio...';
# TODO: make file name as date_time.mp3
today=$(date +%Y%m%d_%H:%M:%S);
filename="$today.mp3";
dest="streamingFile";
url="http://jjwc.cafe24.com:8000/weatherreport.mp3";
#url="http://jjwc.cafe24.com:8000/xx.mp3";
#url="http://jjwc.cafe24.com:8000/songdo.mp3";
#url="http://jjwc.cafe24.com:8000/imsi.mp3";

echo "Audio from $url will be saved $dest/$filename";

#echo "$today";
#echo $filename;

streamripper $url -d $dest -a $today &
#streamripper http://mp3s.nc.u-tokyo.ac.jp/OTSUCHI_CyberForest.mp3 &



