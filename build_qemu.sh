#!/usr/bin/bash
PACKER_LOG=1 PACKER_LOG_PATH="./logs/qemu_build_$(date +%Y%m%d.%H%M%S).log" packer build -timestamp-ui -force packer/webserver-ubuntu.json
