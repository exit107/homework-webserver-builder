#!/usr/bin/env bash

########################################################
## Build an Azure ARM server from the packer template ##
########################################################

# Envvars
export BUILD_VERSION=$(git rev-parse --short HEAD)

# Logging
export PACKER_LOG=1
export PACKER_LOG_PATH="./logs/azure-arm_${BUILD_VERSION}_$(date +%Y-%m-%d.%H%M%S).log"

# Notify the build user
echo "Build starting"
echo "Logs available at: ${PACKER_LOG_PATH}"

# Build It!
packer build \
  -timestamp-ui \
  -force \
  -var-file=./vars/generic.json \
  -var-file=./vars/SECRETS_azure-arm.json \
  -var-file=./vars/azure-arm.json \
  ./packer/azure-arm.json
