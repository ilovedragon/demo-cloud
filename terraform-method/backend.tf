terraform {
  backend "s3" {
    bucket = "terraform-bucket2023923"
    key    = "terraform.tfstate"
    region = "ap-southeast-2"
  }
}