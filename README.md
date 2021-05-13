# Cososys_Project

# 1. Vagrant Box Details
* Ubuntu trusty x64
* Apache2 (Ubuntu)
* PHP 5 (Ubuntu)
* MySQL Server 5 (Ubuntu)

Requirements
* VirtualBox
* Vagrant

Guide
1. Download this repository
2. Optional: Create a new SSH Key
    - Navigate to your .ssh folder
    - Run command: ssh-keygen -t rsa -b 2048 -f vagrant
    - You will need to uncomment the file provision statement in the Vagrant File to copy they public key to the VM
3. Navigate to the root of the "Vagrant" folder and review Vagrant file. 
    - Command: more VagrantFile
4. Optional: Apply SSH changes 
5. Command: vagrant up

This will create a local ubuntu virtual box with Apache, PHP & MySQL. It will clone a seperate repository to retrieve a simple html file to be used by the web server.

Web Page: http://localhost:8080/

# 2. Cloud Formation

This is a simple template to launch an EC2 instance. This instance is within a subnet inside a VPC with a Gateway attached.

This template is also available for use from this S3 bucket: https://cososys-cf-template.s3.eu-west-2.amazonaws.com/vpc.yaml

Guide
1. This stack can be launched using the GUI and pointing to the yaml file in the S3 bucket
2. This stack can be launched through the CLI
    - aws configure to setup environment
    - Command: aws cloudformation create-stack --stack-name Cososys --template-url https://cososys-cf-template.s3.eu-west-2.amazonaws.com/vpc.yaml --parameters ParameterKey=RigName,ParameterValue=TestRig




