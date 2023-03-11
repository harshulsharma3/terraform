resource "local_file" "devops" {
	filename = "/home/ubuntu/terraform/terraform-variables/test.txt"
	content = var.content-map["content1"]
}

resource "local_file" "auto_test" {
	filename = var.filename
	content = var.content
}

output "export_variable"{
value = var.export_variable
}

resource "local_file" "file_list"{
filename = var.file_list[1]
content = var.content-map["content2"]
}


output "aws_ec2_instances" {
value = var.aws_ec2_object.instances
}

output "day"{
value = var.day
}
