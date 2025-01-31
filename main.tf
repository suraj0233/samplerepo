resource "aws_s3_bucket" "my_bucket" {
  bucket = "my-example-bucket"
  acl    = "private"
  
}

resource "aws_s3_bucket_object" "my_object" {
  bucket = aws_s3_bucket.my_bucket.bucket
  key    = "example-key"
  source = "example-file.txt"
  acl    = "private"
}
