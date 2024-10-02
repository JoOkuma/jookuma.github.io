#! /usr/bin/sh

ffmpeg -i full.mp4 -vf "scale=720:-2" -c:v libx264 -crf 25 -preset veryslow embryo.mp4
ffmpeg -i full.mp4 -vf "scale=720:-2" -c:v libvpx-vp9 -crf 40 -preset veryslow embryo.webm
