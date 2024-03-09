provider "aws" {
  region = "us-east-1"
}

module "create-ec2-instance" {
  source = "modules/ec2-instance"
}

module "create-s3-bucket" {
  source = "modules/s3-bucket"
}
