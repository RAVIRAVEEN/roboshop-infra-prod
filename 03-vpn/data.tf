
data "aws_ami" "centos8" {
  most_recent      = true
  owners           = ["973714476881"]


filter {
    name   = "name"
    values = ["Centos-8-DevOps-Practice"]
  }

  filter {
    name   = "root-device-type"
    values = ["ebs"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }
}



data "aws_vpc" "default" {
  default = true
  
}

data "aws_subnet" "selected" {
  vpc_id = data.aws_vpc.default.id
  availability_zone = "us-east-1a"
  
}



data "aws_ssm_parameter" "vpn_sg_id" {
  name = "/${var.project_name}/${var.envinorment}/vpn_sg_id"
}


# output "vpc_info" {
#   value = data.aws_subnet.selected.id
# }