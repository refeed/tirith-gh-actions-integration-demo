provider "aws" {
  region = "us-west-2"
}

resource "aws_s3_bucket_acl" "example" {
  bucket = aws_s3_bucket.example_bucket.id

  acl = "private"
}

resource "aws_s3_bucket" "example_bucket" {
  bucket = "example-bucket-name"
}
