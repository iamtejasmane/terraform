resource "local_file" "dynamic_password" {
  filename = "password.txt"
  content  = "My current password is  ${random_password.password.result}"
}

resource "random_password" "password" {
  length  = 8
  special = true
}
