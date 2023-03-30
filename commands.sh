# init
# plan
# apply
# destroy
# show ; -json - used to print output in json format

# to check if the syntax is correct
terraform validate

# to format the code into a canonical format
terraform fmt

# to see a list of all providers in current configuration file
terraform providers

# to copy all the providers into another dir
terraform providers mirror <dir-path>

# to print all the outputs present in the current config dir
terraform output
# append name of a specific output for single result

# to sync terraform with the real-world infrastructure
# for example, manaul update in the infrastructure
terraform refresh
# this command will no modify any infrastructure resource but modifies the state file
# this is also run by the command terraform plan and apply


# terraform graph command is used to create a visual representation of the dependencies and a terraform config or an execution plan
terraform graph
# to make it in visual form use Graphviz and pass graph to it.

# to install graphviz
apt update
apt install graphviz -y

# to pass terraform graph output to graphviz
terraform graph | dot -Tsvg > graph.svg

# lifecycle rules: syntax
lifecycle 
{
	create_before_destroy = true
}

# ignore_chages rule
# the ignore_chages argument accepts a list and it accepts any valid resource attributes
lifecycle 
{
	ignore_chagnes = [
		tags
	]
}
# here the change made to the tags of a server outside of terraform will be completely ignored
# ingnore_changes = all  

# Data sources
"Data Sources: data sources allows terraform to read attributes of the resources which are provisioned outside its control"
# the data block is similar to the resource block 
# instead of a resource use data keyword
data "local_file" "data" 
{
	filename = "/root/dog.txt"
}

# Meta Arguments
"Meta arguments can be used in the any resource block to change the behavior of the resources"

# Count: to create multiple instances of the local file is make use of count meta argument
count = 3 # inside block


# Terraform LOGS
# to export the logs in a file
TF_LOG_PATH

# to export logs 
TF_LOG 

# Terraform Functions 

# to read data from a file 
file("filePath")

# to read number of elements in a given list or map
length(var.filename)

#  convert a list into a set
toset(var.region)

# Terraform provides an interactive console
terraform console

# to return max
max ( 1 , 2 , 3 )

# to return min
min ( 1 , 2 , 3 )

# spread operator
max (var.num...)

# to return most closely number
ceil(10.1) # => 10
ceil(10.9) # => 11

# to get the decimal point number
floor(10.1) # => 10
floor(10.9) # => 10


# string function

# to split the string
split(",", "ami-zyx,AMI-ABC,ami-efg")
split(",", var.ami)

# convert string to lower and uppercese
lower("")
upper("")

# find the index of the matching string
index(var.ami, "AMI-ABC")

# to find the element at index
element(var.ami, 2)

# to check if element is exists
contains(var.ami, "AMI-ABC")




# conditional expressions







