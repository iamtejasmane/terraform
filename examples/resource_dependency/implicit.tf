resource "local_file" "mypet" {
  filename = "pet.txt"
  content  = "My favorite pet is ${random_pet.pet.id}"
}

resource "random_pet" "pet" {
  prefix = "Mr."
}
