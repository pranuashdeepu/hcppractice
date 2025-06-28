provider "aws" {
region = "ap-south-1"
}

resource "aws_instance" "one" {
count = var.instance_count
ami = "ami-018046b953a698135"
instance_type = var.instance_type
tags = {
Name = var.instance_name
}
}

