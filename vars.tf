# Creating a Variable for ami of type map
variable "access_key" {}

variable "secret_key" {}


variable "ec2_ami" {}

# Creating a Variable for region

variable "region" {}

variable "vmcount" {
  type    = number
  default = 2
}

# Creating a Variable for instance_type
variable "instance_type" {
  type    = string
  default = "t2.micro"
}
