#!/usr/bin/bash
##############################################################
## Build a local VirtualBox server from the packer template ##
##############################################################

# Make the output directory
if [ ! -d ./output/vbox/ ]; then
  mkdir -p output/vbox/
fi

# Logging
PACKER_LOG=1
PACKER_LOG_PATH="./logs/vbox_build_$(date +%Y%m%d.%H%M%S).log"

# Build It!
packer build -timestamp-ui -force packer/webserver-ubuntu-vbox.json
