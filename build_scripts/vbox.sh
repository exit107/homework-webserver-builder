#!/usr/bin/env bash

##############################################################
## Build a local VirtualBox server from the packer template ##
##############################################################

# Make the output directory
if [ ! -d ./output/vbox/ ]; then
  mkdir -p output/vbox/
fi

# Envvars
export BUILD_VERSION=$(git rev-parse --short HEAD)

# Logging
export PACKER_LOG=1
export PACKER_LOG_PATH="./logs/vbox_${BUILD_VERSION}_$(date +%Y-%m-%d.%H%M%S).log"

# Notify the build user
echo "Build starting"
echo "Logs available at: ${PACKER_LOG_PATH}"

# Build It!
packer build \
  -timestamp-ui \
  -force \
  -var-file=./vars/generic.json \
  packer/vbox.json
