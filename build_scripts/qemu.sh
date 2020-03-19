#!/usr/bin/bash
########################################################
## Build a local QEMU server from the packer template ##
########################################################
# Make the output directory
if [ ! -d ./output/qemu/ ]; then
  mkdir -p output/qemu/
fi

# Logging
PACKER_LOG=1
PACKER_LOG_PATH="./logs/qemu_build_$(date +%Y%m%d.%H%M%S).log"

# Build It!
packer build -timestamp-ui -force packer/qemu.json
