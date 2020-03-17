#!/usr/bin/bash
########################################################
## Build an Azure ARM server from the packer template ##
########################################################

# Logging
PACKER_LOG=1
PACKER_LOG_PATH="./logs/azure_build_$(date +%Y%m%d.%H%M%S).log"

# Build It!
packer build -timestamp-ui -force -vars-file=./vars/azure.json ./packer/webserver-ubuntu-azure.json
