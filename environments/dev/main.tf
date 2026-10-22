module "vpc" {
  source = "../../modules/vpc"

  env         = "dev"
  cidr_block  = "10.0.0.0/16"
  subnet_cidr = "10.0.1.0/24"
  az          = "${var.aws_region}a"
}
module "ec2" {
  source = "../../modules/ec2"

  env           = "dev"
  ami_id        = "ami-094f9581a7ca8be38"
  instance_type = "t2.micro"
  subnet_id     = module.vpc.subnet_id
  instance_count = 1
}