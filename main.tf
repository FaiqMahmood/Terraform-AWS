provider "aws" {
  region = "us-east-1"
}

variable "ami_value" {
  description = "value for the ami"
}

variable "instance_type_value" {
  description = "value for the type of instance"
}

variable "subnet_id_value" {
  description = "value for the subnet id"
}

variable "key_name" {
  description = "Value AWS key-value pair"
}

variable "bucket_name" {
  description = "The name of the bucket"
}

module "create-ec2-instance" {
  source              = "./modules/ec2-instance/"
  ami_value           = var.ami_value
  instance_type_value = var.instance_type_value
  subnet_id_value     = var.subnet_id_value
  key_name            = var.key_name
}

module "create-s3-bucket" {
  source      = "./modules/s3-bucket/"
  bucket_name = var.bucket_name
}
