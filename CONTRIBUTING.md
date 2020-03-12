# Contributing

## What you need:
* A workstation with either Virtualbox 6.0 (or greater) or QEMU installed
* Git
* [Packer](https://packer.io/downloads.html) ([installation instructions](https://packer.io/intro/getting-started/install.html##precompiled-binaries))

## What you need to know:
* The packer templates are stored under `./packer/`
* Every packer template needs to have an associated build script stored under `./build_scripts/`
* All logs should be stored under `./logs/`
* If there is a local artifact built, it should be stored under `./output/`, optionally in its own subdirectory.
* The build script is responsible for all setup and cleanup for a given template. This includes creating (and if necessary deleting) output directories.

## To build the template:

### VirtualBox:
1. Clone the `homework-webserver-builder` repo with git.
  * `git clone https://github.com/exit107/homework-webserver-builder.git`
2. Change into the repository directory
  * `cd homework-webserver-builder`
3. Run the script `./build_vbox.sh`
4. An `ova` will be output in the `./output/vbox/` directory. This can be imported into VirtualBox and utilized for local development. 
_TBD: Windows-specific instructions_

### QEMU:
1. Clone the `homework-webserver-builder` repo with git.
  * `git clone https://github.com/exit107/homework-webserver-builder.git`
2. Change into the repository directory
  * `cd homework-webserver-builder`
3. Run the script `./build_qemu.sh`
4. A `qcow2` disk image will be output in the `./output/qemu/` directory. This can be imported into QEMU and utilized for local development. 

### Notes:
* The local packer built machine will need the network configured after booting it up. You can utilize dhcp with the command `sudo dhclient enp1s0`.
* Verbose log output for the build is contained in the `./logs/` directory.
