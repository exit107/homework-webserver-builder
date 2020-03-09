# How to build a local server

## Requirements:
* A workstation running a Linux variant (RedHat or Debian based are preferred)
* Git
* Packer
* QEMU (It is assumed that you have setup QEMU/KVM on your workstation)
## _Optional (for Ansible role development):_
* Ansible
* Molecule

## To install packer and build the template::
1. Download [packer](https://packer.io/downloads.html) and install it according to the [instructions listed](https://packer.io/intro/getting-started/install.html#precompiled-binaries).
2. Clone the `homework-webserver-builder` repo with git.
  * `git clone https://github.com/exit107/homework-webserver-builder.git`
3. Change into the repository directory
  * `cd homework-webserver-builder`
4. Run the script `./build_qemu.sh`
5. A `qcow2` disk image will be output in the `./output/qemu/` directory. This can be imported into QEMU and utilized for local development. 

## Notes:
* The local packer built machine will need the network configured after booting it up. You can utilize dhcp with the command `sudo dhclient enp1s0`.
* Verbose log output for the build is contained in the `./logs/` directory.
