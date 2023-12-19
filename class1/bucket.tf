resource "aws_s3_bucket" "hello" {
  bucket_prefix = "kaizen-"
}


resource "aws_s3_bucket" "bucket" {
  bucket = "kaizen-kanyshai1"
}


output bucket {
    value = aws_s3_bucket.bucket.arn
}

output bucket2 {
    value = aws_s3_bucket.hello.arn
}