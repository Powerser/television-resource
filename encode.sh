#!/bin/bash
for file in videos/*;
do
if [ -f "$file/source.mp4" ] && [ ! -f "$file/playlist.m3u8" ];then
ffmpeg -i $file/source.mp4 -c:v libx264 -c:a aac -crf 30 -b:a 64k -vf scale=-1:240 -f ssegment -segment_format mpegts -segment_list $file/playlist.m3u8 -segment_time 10 $file/%03d.ts
fi
done
