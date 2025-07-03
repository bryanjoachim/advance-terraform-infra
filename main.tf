terraform {
  required_version = ">= 1.6.6"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.36.0"
    }
  }
}

provider "aws" {
  region = "us-east-1"
}

module "web_instance_1" {
  source        = "./ec2_instance_module"
  instance_type = "t2.micro"
  instance_name = "web1"
  vpc_id        = "vpc-030d2a36977e658d0"
  subnet_id     = "subnet-0e25eb15377a8aa73"
}

module "web_instance_2" {
  source        = "./ec2_instance_module"
  instance_type = "t2.small"
  instance_name = "web2"
  vpc_id        = "vpc-030d2a36977e658d0"
  subnet_id     = "subnet-0e25eb15377a8aa73"
}

output "instance_1_ip" {
  value = module.web_instance_1.public_ip
}

output "instance_1_id" {
  value = module.web_instance_1.instance_id
}

output "instance_2_ip" {
  value = module.web_instance_2.public_ip
}

output "instance_2_id" {
  value = module.web_instance_2.instance_id
}


