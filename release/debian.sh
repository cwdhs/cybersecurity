#!/bin/bash

# run filesystem diff script
bash ../linux/files/find.sh

# run CIS-compliant hardening script
bash ../linux/cis/debian/setup.sh

# make a directory to put results
mkdir ../results

# all results use the `.txt` suffix, so it's
# easy to move them all over at once
find .. -name \*.txt -exec mv {} ../results \;

# re-install gdm3, the GUI and some dependencies
apt-get purge gdm3 -y
apt-get install lightdm lxsession -y

# disable Alsa Restore service (hangs startup)
systemctl mask alsa-restore.service alsa-store.service

# unlock user's account
usermod -U $(whoami)