#!/bin/bash

# Finds files of the following types:
# mp3, mov, mp4, avi, mpg, mpeg, flac, m4a, flv, ogg, gif, png, jpg, jpeg

find / \( -name "*.mp3" -o -name "*.mov" -o -name "*.mp4" -o -name "*.avi" -o -name "*.mpg" -o -name "*.mpeg" -o -name "*.flac" -o -name "*.m4a" -o -name "*.flv" -o -name "*.ogg" -o -name "*.gif" -o -name "*.png" -o -name "*.jpg" -o -name "*.jpeg" \) > files.txt;