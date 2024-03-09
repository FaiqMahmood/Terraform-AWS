provider "aws" {
  region = "us-east-1"
}

resource "aws_s3_bucket" "terraform-s3-bucket" {
  bucket = var.bucket_name

  acl = "private" # Access control setting

  versioning {
    enabled = true # Enable versioning
  }

  server_side_encryption_configuration {
    rule {
      apply_server_side_encryption_by_default {
        sse_algorithm = "AES256"
      }
    }
  }

  tags = {
    Name        = "My Terraform bucket"
    Environment = "Dev"
  }
}
