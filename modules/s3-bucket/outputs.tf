output "arn" {
  value = aws_s3_bucket.terraform-s3-bucket.arn
}

output "tags" {
  value = aws_s3_bucket.terraform-s3-bucket.tags
}
