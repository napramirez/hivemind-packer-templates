#!/bin/bash -eux

# Delete unneeded files.
#rm -f /home/vagrant/*.sh

# Erase some packages
yum -y erase gtk2 libX11 hicolor-icon-theme avahi freetype bitstream-vera-fonts

# Clear the package cache
yum -y clean all

# Clear the temporary ruby files
rm -rf /tmp/rubygems-*

# Zero out the rest of the free space using dd, then delete the written file.
dd if=/dev/zero of=/EMPTY bs=1M
rm -f /EMPTY

# Add `sync` so Packer doesn't quit too early, before the large file is deleted.
sync
