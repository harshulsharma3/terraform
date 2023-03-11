variable "filename" {
default = "/home/ubuntu/terraform/terraform-variables/auto-test.txt"
}

variable "content" {
default = "Testing auto content..."
}


variable "export_variable" {}
#TF_VAR_export_var "name"


variable "content-map" {
type = map
default = {
content1 = "testing content 1 with var"
content2 = "testing content 2 with var"
}
}


variable "file_list"{
type = list
default = ["/home/ubuntu/terraform/terraform-variables/file_1.txt","/home/ubuntu/terraform/terraform-variables/file_2.txt"]
}


variable "aws_ec2_object"{
 type = object ({
	name = string
	instances = number
	key = list(string)
	ami = string
})

default = {
	name = "test_ec2_instance"
	instances = 1
	key = ["key1.pem", "key2.pem"]
	ami = "ubuntu-aef34"
}
}


variable "day" {}






