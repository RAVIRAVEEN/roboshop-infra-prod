module "roboshop" {
    #source = "../terraform-aws-vpc"
    source = "git::https://github.com/RAVIRAVEEN/terraform-aws-vpc.git?ref=main"
    project_name = var.project_name
    envinorment = var.envinorment
    common_tags = var.common_tags
    vpc_tags = var.vpc_tags
    ig_tags = var.ig_tags

    # public subnet
    public_subnet_cidr = var.public_subnet_cidr
     public_subnet_tags = var.public_subnet_tags

    # private subnet
    private_subnet_cidr = var.private_subnet_cidr

     # databse subnet
      database_subnet_cidr = var.database_subnet_cidr
      database_subnet_tags = var.database_subnet_tags

    # peering 
    is_peering_require = var.is_peering_require

    

}