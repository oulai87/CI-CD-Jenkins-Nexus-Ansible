terraform {
  required_providers{
    aws = {
        source = "hashicorp/aws"
        version = "~>3.0"
    }
  }
}

#configure the AWS provider

provider "aws"{
    region = "us-east-1"
    access_key = ""
    secret_key = ""

}

# Create a VPC

resource "aws_vpc" "myvpc" {
   cidr_block = "172.20.0.0/16"
   
    tags = {
        Name = "MyVPC"
    }

}