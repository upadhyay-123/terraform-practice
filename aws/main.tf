terraform {
required_providers {
        aws = {
        source  = "hashicorp/aws"
        version = "~> 4.16"
}
}
required_version = ">= 1.2.0"
}

provider "aws" {
region = "ap-south-1"
}


resource "aws_instance" "my_ec2_instance" {
        ami = "ami-0f918f7e67a3323f0"
        instance_type = "t2.micro"
        tags = {
                Name = "Terraform-Instance"
}
}
