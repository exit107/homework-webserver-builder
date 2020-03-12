# How to build a remote server

## Azure ARM
### Requirements:
* Git
* Packer
### _Optional (for Ansible role development):_
* Ansible
* Molecule

### To build the template:: 
1. Download [packer](https://packer.io/downloads.html) and install it according to the [instructions listed](https://packer.io/intro/getting-started/install.html##precompiled-binaries).
1. Clone the `homework-webserver-builder` repo with git.
  * `git clone https://github.com/exit107/homework-webserver-builder.git`
2. Change into the repository directory
  * `cd homework-webserver-builder`
3. Update the authentication values that are censored in the packer file `./packer/webserver-ubuntu-azure.json`.
4. Run the script `./build_vbox.sh`
5. An VM will be created in the appropriate resource group

### Notes:
* Verbose log output for the build is contained in the `./logs/` directory.
