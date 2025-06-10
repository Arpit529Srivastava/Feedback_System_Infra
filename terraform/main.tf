provider "aws" {
    region = "us-east-1"
}
resource "aws_s3_bucket" "arpit529srivastava_s3_bucket" {
    bucket = "arpit529srivastava"
    tags = {
     Name = "arpit529srivastava"
     Environment = "Dev"
    }
}
resource "aws_s3_bucket_versioning" "versioning" {
  bucket = aws_s3_bucket.arpit529srivastava_s3_bucket.id
  versioning_configuration {
    status = "Enabled"
  }
}
