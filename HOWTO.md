# How to use the templates to build a remote server

## Requirements:
* Git
* [Packer](https://packer.io/downloads.html) ([installation instructions](https://packer.io/intro/getting-started/install.html##precompiled-binaries))

## Supported remote builders:
* Azure ARM
* _TODO:_ Amazon AMI
* _TODO:_ Digital Ocean

## To build the template:

### Azure ARM:
1. Clone the `homework-webserver-builder` repo with git.
  * `git clone https://github.com/exit107/homework-webserver-builder.git`
2. Change into the repository directory
  * `cd homework-webserver-builder`
3. Update the authentication values that are censored in the packer file `./packer/webserver-ubuntu-azure.json`.
4. Run the script `./build_vbox.sh`

### Notes:
* Verbose log output for the build is contained in the `./logs/` directory.
