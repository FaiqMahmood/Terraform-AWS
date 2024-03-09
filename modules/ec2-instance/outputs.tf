output "public-ip-address" {
  value = aws_instance.terraform-ec2.public_ip
}

output "arn" {
  value = aws_instance.terraform-ec2.arn
}
