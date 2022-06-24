provider "aws" {
  profile = "default"
  region  = "us-east-1"
}

resource "aws_s3_bucket" "prod_tf_wji" {
  bucket = "tf-wji-rnd-20220624"
}

resource "aws_s3_bucket_acl" "prod_tf_wji_bucket_acl" {
  bucket = aws_s3_bucket.prod_tf_wji.id
  acl    = "private"
}

resource "aws_default_vpc" "default" {}
