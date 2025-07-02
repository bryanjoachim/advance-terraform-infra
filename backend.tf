terraform {
  backend "s3" {
    bucket         = "my-terraform-state-bucket3312"
    key            = "global/s3/terraform.tfstate"
    region         = "us-east-1"            # Change to your desired region
    dynamodb_table = "terraform-lock-table" # DynamoDB table name for locking
    encrypt        = true
  }
}