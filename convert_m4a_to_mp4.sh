#!/bin/bash
# convert m4a to mp3
#mkdir newfiles
for f in *.m4a; do ffmpeg -i "$f" -codec:v copy -codec:a libmp3lame -q:a 2 "${f%.m4a}.mp3"; done
# convert mp3 to mp4
ffmpeg -loop 1 -i Hari.jpg -i "${f%.m4a}.mp3" -c:v libx264 -c:a aac -strict experimental -b:a 192k -shortest "${f%.m4a}.mp4"
