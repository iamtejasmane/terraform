resource "local_file" "pet_2" {
  filename = "pet_2.txt"
  content  = "This is my pet Mr. Dog"

  depends_on = [random_pet.my-pet]

}

resource "random_pet" "my-pet" {
  prefix = "Mr."
  length = 3
}
