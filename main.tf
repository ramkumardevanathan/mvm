resource "aws_instance" "my-machine" {
  # Creates identical aws ec2 instances
  count = var.vmcount

  # All four instances will have the same ami and instance_type
  ami           = var.ec2_ami       # lookup(var.ec2_ami, var.region)
  instance_type = var.instance_type
  tags = {
    # The count.index allows you to launch a resource 
    # starting with the distinct index number 0 and corresponding to this instance.
    Name = "my-machine-${count.index}"
  }
}
