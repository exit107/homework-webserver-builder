#!/usr/bin/bash
#############################################################
## Build a server on DigitalOcean from the packer template ##
#############################################################

# Logging
PACKER_LOG=1
PACKER_LOG_PATH="./logs/digitalocean_build_$(date +%Y%m%d.%H%M%S).log"

# Build It!
packer build -timestamp-ui -force -var-file=./vars/SECRETS_digitalocean.json -var-file=./vars/digitalocean.json ./packer/digitalocean.json
