#!/usr/bin/bash
########################################################
## Build an Azure ARM server from the packer template ##
########################################################

# Logging
PACKER_LOG=1
PACKER_LOG_PATH="./logs/azure-arm_build_$(date +%Y%m%d.%H%M%S).log"

# Build It!
packer build -timestamp-ui -force -var-file=./vars/SECRETS_azure-arm.json -var-file=./vars/azure-arm.json ./packer/azure-arm.json
