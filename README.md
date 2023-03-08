# terrform_script

This terraform script creates a VPC with private subnet isolating your network from outside work and creates a VM instance with installing docker and kubernetes in it.The instances 
created under this network are provisioned with NAT gateway (+ Cloud router) to expose your system to internet for upgrade purposes . 

### Initalization steps 
  - Step - 1 :- Configure your "service_acct" credential and  project name in terraform.tfvars file
  - Step - 2 :- All set to go for terraform plan and apply stage :)
