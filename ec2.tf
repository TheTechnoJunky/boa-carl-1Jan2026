resource "aws_instance" "example" {
  for_each = var.ec2_instances
  ami           =  var.AMI_ID
  instance_type = each.value
#count = var.novm

vpc_security_group_ids = [
  aws_security_group.allow_tls.id
]
  tags = {
    #Name = "${var.VM_Name}-${count.index}"
    Name = "carl-vm-${each.key}"
  }
}

