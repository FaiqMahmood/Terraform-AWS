provider "aws" {
  region = "us-east-1" # Set your desired AWS region
}

resource "aws_instance" "terraform-ec2" {
  ami           = "ami-07d9b9ddc6cd8dd30" # Specify an appropriate AMI ID
  instance_type = "t2.micro"
  subnet_id     = "subnet-01cf40b9acBc2767b2d" # Specify an appropriate subnet_id 
  key_name      = "aws-key-pair" # Specify an AWS Key pair

  tags = {
    Name = "terraform-ec2"
  }
}
