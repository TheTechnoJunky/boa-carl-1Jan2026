resource "aws_instance" "example" {
  ami           =  var.AMI_ID
  instance_type = var.VM_Size
  tags = {
    Name = var.VM_Name
  }
}