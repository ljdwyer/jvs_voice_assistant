#!/bin/bash




timeout "$1" sox -b 32 -e unsigned-integer -r 96k -c 2 -d --clobber --buffer $((96000*2*10)) recorded_audio.wav 




