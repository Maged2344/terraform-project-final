terraform {
  backend "s3" {
    bucket         = "terraform-bucket-fstate"
    key            = "terraform.tfstate"
    dynamodb_table = "teraform-lock"
    region         = "us-east-1"
  }
}