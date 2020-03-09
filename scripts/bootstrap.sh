#!/usr/bin/env bash

# Prep the the box for ansible to run

## Upgrade the existing install
apt-get update && apt-get upgrade -y

## Install ansible and git (required for ansible-galaxy)
apt-get install ansible git -y

## Set up setupuser with sudo w/o password (this needs to be rolled back in later plays
echo '# Temporary sudoers file for bootstrapping ansible.' >> /etc/sudoers.d/setupuser
echo '# This file should be removed as a part of provisioning cleanup.' >> /etc/sudoers.d/setupuser
echo 'setupuser        ALL=(ALL)       NOPASSWD: ALL' >> /etc/sudoers.d/setupuser
chmod 440 /etc/sudoers.d/setupuser
sed -i "s/^.*requiretty/#Defaults requiretty/" /etc/sudoers
