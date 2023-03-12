terraform{
required_providers {
	aws = {
	source = "hashicorp/aws"
	version = "~>4.16"
}
}
required_version = ">=1.2.0"
}

provider "aws" {
region = "ap-south-1"
}

resource "aws_instance" "ec2_test" {
count =1
ami = "ami-0f8ca728008ff5af4"
instance_type = "t2.micro"
tags = {
Name = "terra_test"
}
}

output "instace_pub_ip" {
value = aws_instance.ec2_test[*].public_ip
}

resource "aws_s3_bucket" "bucket" {
bucket = "terra-bucket-123456"

tags = {
Name = "terra-bucket-123456"

}
}



