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







