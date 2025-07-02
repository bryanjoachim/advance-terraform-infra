variable "instance_type" {
  description = "Ec2 instance type"
  type        = string
}

variable "instance_name" {
  description = "Name tag for the instance"
  type        = string
}

variable "vpc_id" {
  description = "VPC Id where instance will be deployed"
  type        = string
}

variable "subnet_id" {
  description = "VPC Id where instance will be deployed"
  type        = string
}