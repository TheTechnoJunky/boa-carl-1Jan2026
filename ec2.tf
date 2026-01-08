resource "aws_instance" "example" {
  ami           =  var.AMI_ID
  instance_type = var.VM_Size
count = var.novm

vpc_security_group_ids = [
  aws_security_group.allow_tls.id
]
  tags = {
    Name = "${var.VM_Name}-${count.index}"
  }
}

