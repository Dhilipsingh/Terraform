resource "aws_vpc" "main" {
    #for_each = toset(var.cidr_block)
    cidr_block = var.cidr_block
    tags = {
      Name = "Dynamic-VPC"
    }
  
}