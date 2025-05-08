resource "aws_s3_bucket" "example" {
  bucket = "invbuckettest"

  tags = {
    Name        = "invbuckettest"
    Environment = "Dev"
  }
}
