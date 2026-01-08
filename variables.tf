variable "AMI_ID" {
    type = string
    description = "AMI ID for AWS"
    #default = "ami-068c0051b15cdb816"
  }
  variable "VM_Size" {
    type = string
   # default = "t3.micro"
      }

      variable "VM_Name" {
        type = string
      #  default = "Carl-VM- Day2"
      }
      
      variable "novm" {
        type = number
        description = "number of vms to create"
      }

      variable "ec2_instances" {
        type = map(string)
        default = {
          "web" = "t3.micro"
          "db" = "t2.small"
        }
      }