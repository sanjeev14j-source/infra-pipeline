resource "aws_instance" "project-ec2" {
  ami           = var.ami_id
  instance_type = var.instance_type
  subnet_id     = var.subnet_id
  count         = var.count



  tags = {
    Name = "${var.env}-ec2-${count.index}"
    Env  = var.env
     }
}