terraform {
  backend "s3" {
    bucket = "group-2-bucket"
    key    = "ohio/terraform.tfstate"
    region = "us-east-2"
    # dynamodb_table = "lock-state"
  }
}
