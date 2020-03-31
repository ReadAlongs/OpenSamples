#!/bin/bash

# This script will run through the samples saved in this repo, with notes here about which ones fail and which ones succeed.
mkdir -p output

# Eric Joanis's intro text in French runs now
readalongs align -i -s -l fra -f fra/ej-fra.txt fra/ej-fra.m4a output/ej-fra
# Adding extra text at the end of the .txt file makes the alignment fail
readalongs align -i -s -l fra -f fra/ej-fra-long.txt fra/ej-fra.m4a output/ej-fra-long
# Removing text from the end of the .txt file: alignment succeeds, with 9s of audio aligned to the last word, we'd like a warning here ideally
readalongs align -i -s -l fra -f fra/ej-fra-short.txt fra/ej-fra.m4a output/ej-fra-short

# Aidan Pine's intro text in Danish fails to align, not sure why. It used to work.
readalongs align -i -s -f -l dan dan/ap_dan.txt dan/ap_dan.wav output/ap_dan

# UDHR Librivox files
# eng aligns
readalongs align -i -s -f -l eng UDHR-Librivox/human_rights_un_eng-preamble.txt UDHR-Librivox/human_rights_un_eng_ks_64kb-preamble.mp3 output/UDHR-eng-preamble
# fra exist with a UnboundLocalError exception
readalongs align -i -s -f -l fra UDHR-Librivox/human_rights_un_frn-preamble.txt UDHR-Librivox/human_rights_un_frn_ezwa_64kb-preamble.mp3 output/UDHR-fra-preamble
