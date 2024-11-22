
resource "aws_vpc" "vpc" {
    for_each = toset(var.vpclist)
    cidr_block = each.value
    instance_tenancy = "default"
    enable_dns_hostnames = true
    tags = {
        name= "DemoVPC"
    }
}