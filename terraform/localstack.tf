provider "aws" {
  region                  = "us-east-1"  # Replace with your desired region
  endpoint                = "http://localhost:4566"
  access_key              = "test"       # Arbitrary values for local testing
  secret_key              = "test"       # Arbitrary values for local testing
  skip_credentials_validation = true   # Required for LocalStack
  skip_requesting_account_id = true     # Required for LocalStack
}

resource "aws_s3_bucket" "example_bucket" {
  bucket = "my-local-bucket"
  acl    = "private"
}