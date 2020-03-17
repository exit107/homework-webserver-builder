# How to use the templates to build a remote server

## Requirements:
* Git
* [Packer](https://packer.io/downloads.html) ([installation instructions](https://packer.io/intro/getting-started/install.html##precompiled-binaries))

## Supported remote builders:
* Azure ARM
* DigitalOcean

## To build the template from a local host:

### Azure ARM:
1. Clone the `homework-webserver-builder` repo with git.
  * `git clone https://github.com/exit107/homework-webserver-builder.git`
2. Change into the repository directory
  * `cd homework-webserver-builder`
3. Check the contents of the file `./vars/azure-arm.json` to make sure the location and vm_size make sense.
4. Create a new file `./vars/SECRETS_azure-arm.json` with the contents:
    > {
    >   "arm_subscription_id": "<YOUR_SUBSCRIPTION_ID_HERE>",
    >   "arm_client_id": "<YOUR_CLIENT_ID_HERE>",
    >   "arm_client_secret": "<YOUR_CLIENT_SECRET_HERE>",
    >   "arm_tenant_id": "<YOUR_TENANT_ID_HERE>"
    > }
5. Run the script `./build_scripts/azure-arm.sh`

### DigitalOcean:
1. Clone the `homework-webserver-builder` repo with git.
  * `git clone https://github.com/exit107/homework-webserver-builder.git`
2. Change into the repository directory
  * `cd homework-webserver-builder`
3. Check the contents of the file `./vars/digitalocean.json` to make sure the location, image, and size make sense.
4. Create a new file `./vars/SECRETS_digitalocean.json` with the contents:
    > {
    >   "do_api_token": "<YOUR_API_TOKEN_HERE>"
    > }
5. Run the script `./build_scripts/digitalocean.sh`

### Notes:
* Verbose log output for the build is contained in the `./logs/` directory.
