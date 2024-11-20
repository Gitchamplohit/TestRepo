resource "local_file" "demo" {
  filename = "/root/Terraform/terraform_local/demo.txt"
  content  = "this is my first terraform demo file"
}

resource "random_string" "rand_str" {
  length           = "14"
  special          = "true"
  override_special = "!@#$%^&*><?+-/"
}

output "random_string" {
  value = random_string.rand_str[*].result
}


test
