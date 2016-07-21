#!/bin/bash -eux

# Prepare the SSH directory
mkdir -p /home/vagrant/.ssh
chmod 0700 /home/vagrant/.ssh

# Download the Vagrant SSH public key
curl -L https://raw.githubusercontent.com/mitchellh/vagrant/master/keys/vagrant.pub -o /home/vagrant/.ssh/authorized_keys

# Ensure we have the correct permissions set
chmod 0600 /home/vagrant/.ssh/authorized_keys
chown -R vagrant /home/vagrant/.ssh
