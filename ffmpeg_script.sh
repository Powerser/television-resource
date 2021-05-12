ffmpeg -i tiebiaotongmu.mp4 -c:v libx264 -c:a aac -crf 30 -b:a 64k -vf scale=-1:240 tiebiaotongmu-out.mp4 # h264 压缩
ffmpeg -i tiebiaotongmu.mp4 -c:v libvpx-vp9 -c:a libopus -b:v 200k -b:a 64k -vf scale=-1:240 tiebiaotongmu-out.webm # vp9 压缩
