module "vpc" {
    source = "./modules/vpc"
    cidr_block = var.cidr_block
  
}
module "SG" {
    source = "./modules/SG" 
    vpc_id = module.vpc.aws_vpc
         }