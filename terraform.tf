terraform {
  required_providers {
     aws = {
    source  = "hashicorp/aws"
    version = "6.4.0"
  }
 }

backend "s3" {
  bucket = "my-state-bucket-vishalg"
  key    = "terraform.tfstate"
  region = "us-east-2"
  dynamodb_table = "my-state-table"

}

}
 