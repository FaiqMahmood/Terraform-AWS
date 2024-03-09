provider "aws" {
  region = "us-east-1" # Set your desired AWS region
}

resource "aws_instance" "terraform-ec2" {
  ami           = var.ami_value # Specify an appropriate AMI ID
  instance_type = var.instance_type_value
  subnet_id     = var.subnet_id_value # Specify an appropriate subnet_id 
  key_name      = var.key_name        # Specify an AWS Key pair

  tags = {
    Name = "terraform-ec2-instance"
  }
}
