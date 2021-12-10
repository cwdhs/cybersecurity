#!/bin/bash

# run filesystem diff script
bash ../linux/files/find.sh

# run CIS-compliant hardening script
bash ../linux/cis/ubu18/setup.sh

# make a directory to put results
mkdir ../results

# all results use the `.txt` suffix, so it's
# easy to move them all over at once
find .. -name \*.txt -exec mv {} ../results \;

# re-install gdm3, the GUI
apt-get install -y gdm3

# unlock user's account
usermod -U $(whoami)