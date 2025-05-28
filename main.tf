resource "aws_s3_bucket" "example" {
  bucket = "invbuckettest"

  tags = {
    Name        = "invbuckettest"
    Environment = "Dev"
  }
}

resource "aws_vpc" "main" {
  cidr_block       = "10.0.0.0/16"
  instance_tenancy = "default"

  tags = {
    Name = "inv-vpc-001"
  }
}
