variable "ami_id" {
  description = "The AMI ID to use for the EC2 instance"
  type        = string
}

variable "instance_type" {
  description = "The instance type for the EC2 instance"
  type        = string
}

variable "subnet_id" {
  description = "The subnet ID where the EC2 instance will be launched"
  type        = string
}

variable "instance_count" {
  description = "The number of EC2 instances to launch"
  type        = number
}

variable "env" {
  description = "The environment tag for the EC2 instance(development, staging, production)"
  type        = string
}

  
