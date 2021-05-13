# Cososys_Project

Vagrant Box Details
Ubuntu trusty x64 with LAMP
Apache2 (Ubuntu)
PHP 5 (Ubuntu)
MySQL Server 5 (Ubuntu)

Requirements
VirtualBox
Vagrant

Guide
1. Download this repository
2. Optional: Create a new SSH Key
    - Navigate to your .ssh folder
    - Run command: ssh-keygen -t rsa -b 2048 -f Vagrant
    - You will need to uncomment the file provision statement in the Vagrant File to copy they public key to the VM
3. Navigate to the root folder and review Vagrant file. 
    - Command: more VagrantFile
4. Optional: Apply SSH changes 
5. Command: vagrant up

This will create a local virtual box VM with lamp installed. It will clone a seperate repository to retrieve a simple html file to be used by the web server.


