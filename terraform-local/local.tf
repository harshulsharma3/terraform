resource local_file devops {
filename = "/home/ubuntu/terraform/terraform-local/terra_script.txt"
content = "Learning Terraform"
}


resource "random_string" "rand_str" {
length = 16
special = true
override_special = "!#$&*()_-=+[{]}<>:"
}

output "rand_str" {
value = random_string.rand_str[*].result
}
