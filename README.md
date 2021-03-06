# Homework - Webserver Builder
![azure-arm](https://github.com/exit107/homework-webserver-builder/workflows/azure-arm/badge.svg)
![digitalocean](https://github.com/exit107/homework-webserver-builder/workflows/digitalocean/badge.svg)
## Requirements:
### Verbatim:
> Ansible/Packer Assignment
> The purpose of this assignment is to integrate Ansible, Packer, and GitHub in a manner similar to that we use internally.
> 
> Specifically, you will need to:
> - Create two Ansible roles, which:
>   - Install Apache and upload a custom HTML file to /var/www/html
>   - Install and start an FTP server of your choosing
> - Create a Packer template that runs these Ansible roles against a Ubuntu VM
> 
> ...The Packer template can be written against any target provider you're comfortable with. We build Amazon AMI, Azure ARM, and Vagrant versions internally, but a VMWare template is perfectly fine.
> 
> In addition, the "custom HTML file" can simply be a text file containing hello, world. The point is not to test your HTML, but simply to demonstrate how to copy files during the build process. 
> 
> You should test these roles against a local Ubuntu 18.04 VM. Please include the inventory file you used to do this in your submission.
> 
> Once your Ansible roles and Packer template work, please upload them to a GitHub repository. Include a README explaining the following:
> - Brief description of the Ansible roles
> - Instructions as to how to use them. This should include a note on how to launch a machine locally and update the `inventory` file with its IP address so that Ansible can connect to and configure it.
> - Instructions as to how to run the Packer build.
> 
> ... Note that these "instructions" don't need to be substantial. They simply need to clarify what, id any, steps someone would need to take to actually use the roles/template after cloning your repository.
> 
> When you're done, please send a link to the repository for us to take a look at.
### Interpreted:
#### Ansible
Roles:
* Web Server (Apache)
  * Install Apache
  * Configure Apache
  * Upload custom `index.html`
  * Enable and start Apache
* FTP
  * Install ftp server (vsftpd)
  * Configure ftp server
  * Enable and start ftp server
#### Packer
* Target OS: Ubuntu 18.04
* Builder(s):
  * Local:
    * QEMU - `qemu`
    * VirtualBox - `virtualbox-iso`
  * Remote:
    * Azure Resource Manager (ARM) - `azure-arm`
    * Digital Ocean - `digitalocean`
* Provisioner(s):
  * Ansible - `ansible-local`
#### Documentation
* Ansible role descriptions/instructions - See individual role repositories:
  * [homework-web_server](https://github.com/exit107/homework-web_server)
  * [homework-ftp_server](https://github.com/exit107/homework-ftp_server)
* [Instructions on how to build a local VM from the Packer file.](CONTRIBUTING.md)
* [Instructions on how to build a remote VM from the Packer file.](HOWTO.md)
* [Documentation for automated builds.](AUTOMATED_BUILDS.md)
