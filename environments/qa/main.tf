/*
module"vpc"{
    source = "../../modules/vpc"
    env = "qa"
    cidr_block = "11.0.0.0/16"
    subnet_cidr = "11.0.1.0/24"
    az = "${var.aws_region}a"  
    
} 

module "ec2" {
    source = "../../modules/ec2"
    env = "qa"
    ami_id = "ami-088fb12f8e8397f06"
    instance_type = "t3.micro"
    subnet_id = module.vpc.subnet_id
    instance_count = 2
}
*/