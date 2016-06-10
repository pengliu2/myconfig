#!/bin/sh

for i in ./*.wav
do
    ffmpeg -i "$i" -ab 256k "${i}.mp3"
done
