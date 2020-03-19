#!/bin/bash

# ej-fra.m4a/ej-fra.txt fail to align because the fourth block has a false start, which misleads the decoder.
# ej-fra-[12345].{txt,wav} divide my text into five blocks, for further troubleshooting.

# Instead of adding all combined blocks in Git, I've added only the five individual blocks,
# and this script to generate the interesting combinations dynamically.

# any set of blocks of my sample successfully align, if the fifth is left out: ej-fra-1234 aligns successfully.
ffmpeg -i ej-fra-1.wav -i ej-fra-2.wav -i ej-fra-3.wav -i ej-fra-4.wav -filter_complex '[0:0][1:0][2:0][3:0]concat=n=4:v=0:a=1[out]' -map '[out]' ej-fra-1234.wav
cat ej-fra-[1234].txt > ej-fra-1234.txt

# As soon as the 4th and 5th blocks are there, alignment fails: ej-fra-45 fails to align.
ffmpeg -i ej-fra-4.wav -i ej-fra-5.wav -filter_complex '[0:0][1:0]concat=n=2:v=0:a=1[out]' -map '[out]' ej-fra-45.wav
cat ej-fra-[45].txt > ej-fra-45.txt