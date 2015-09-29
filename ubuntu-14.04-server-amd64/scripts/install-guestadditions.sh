#!/bin/bash -eux

# Install the VirtualBox Guest Additions from the uploaded ISO, then delete the ISO
mkdir -p ~/isomount
mount -o loop /home/vagrant/VBoxGuestAdditions.iso ~/isomount
~/isomount/VBoxLinuxAdditions.run
umount ~/isomount
rm -rf ~/isomount
rm -f /home/vagrant/VBoxGuestAdditions.iso
