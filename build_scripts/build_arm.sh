#!/usr/bin/bash
########################################################
## Build an Azure ARM server from the packer template ##
########################################################

# Make the output directory
if [ ! -d ./output/azure/ ]; then
  mkdir -p output/azure/
fi

# Logging
PACKER_LOG=1
PACKER_LOG_PATH="./logs/azure_build_$(date +%Y%m%d.%H%M%S).log"

# Build It!
packer build -timestamp-ui -force packer/webserver-ubuntu-azure.json
