module "mongodb" {

    source = "git::https://github.com/RAVIRAVEEN/terraform-aws-security-group.git?ref=main"
    project_name = var.project_name
    envinorment = var.envinorment
    common_tags = var.common_tags
    sg_tags = var.sg_tags
    sg_description = "SG Description for mongodb"
    vpc_id = data.aws_ssm_parameter.vpc_id.value
    sg_name = "mongodb"
    #sg_ingress_rule = var.mongodb_sg_ingress_rule
}

module "vpn" {

    source = "git::https://github.com/RAVIRAVEEN/terraform-aws-security-group.git?ref=main"
    project_name = var.project_name
    envinorment = var.envinorment
    common_tags = var.common_tags
    sg_tags = var.sg_tags
    sg_description = "SG Description for vpn"
    vpc_id = data.aws_vpc.default.id
    sg_name = "vpn"
    #sg_ingress_rule = var.mongodb_sg_ingress_rule
}



module "catalogue" {

    source = "git::https://github.com/RAVIRAVEEN/terraform-aws-security-group.git?ref=main"
    project_name = var.project_name
    envinorment = var.envinorment
    common_tags = var.common_tags
    sg_tags = var.sg_tags
    sg_description = "SG Description for catalogue"
    vpc_id = data.aws_ssm_parameter.vpc_id.value
    sg_name = "catalogue"
    #sg_ingress_rule = var.mongodb_sg_ingress_rule
}


module "user" {

    source = "git::https://github.com/RAVIRAVEEN/terraform-aws-security-group.git?ref=main"
    project_name = var.project_name
    envinorment = var.envinorment
    common_tags = var.common_tags
    sg_tags = var.sg_tags
    sg_description = "SG Description for user"
    vpc_id = data.aws_ssm_parameter.vpc_id.value
    sg_name = "user"
    #sg_ingress_rule = var.mongodb_sg_ingress_rule


}

module "cart" {

    source = "git::https://github.com/RAVIRAVEEN/terraform-aws-security-group.git?ref=main"
    project_name = var.project_name
    envinorment = var.envinorment
    common_tags = var.common_tags
    sg_tags = var.sg_tags
    sg_description = "SG Description for cart"
    vpc_id = data.aws_ssm_parameter.vpc_id.value
    sg_name = "cart"
    #sg_ingress_rule = var.mongodb_sg_ingress_rule
}

module "redis" {

    source = "git::https://github.com/RAVIRAVEEN/terraform-aws-security-group.git?ref=main"
    project_name = var.project_name
    envinorment = var.envinorment
    common_tags = var.common_tags
    sg_tags = var.sg_tags
    sg_description = "SG Description for redis"
    vpc_id = data.aws_ssm_parameter.vpc_id.value
    sg_name = "redis"
    #sg_ingress_rule = var.mongodb_sg_ingress_rule
}


module "mysql" {

    source = "git::https://github.com/RAVIRAVEEN/terraform-aws-security-group.git?ref=main"
    project_name = var.project_name
    envinorment = var.envinorment
    common_tags = var.common_tags
    sg_tags = var.sg_tags
    sg_description = "SG Description for mysql"
    vpc_id = data.aws_ssm_parameter.vpc_id.value
    sg_name = "mysql"
    #sg_ingress_rule = var.mongodb_sg_ingress_rule
}

module "shipping" {

    source = "git::https://github.com/RAVIRAVEEN/terraform-aws-security-group.git?ref=main"
    project_name = var.project_name
    envinorment = var.envinorment
    common_tags = var.common_tags
    sg_tags = var.sg_tags
    sg_description = "SG Description for shipping"
    vpc_id = data.aws_ssm_parameter.vpc_id.value
    sg_name = "shipping"
    #sg_ingress_rule = var.mongodb_sg_ingress_rule
}

module "web" {

    source = "git::https://github.com/RAVIRAVEEN/terraform-aws-security-group.git?ref=main"
    project_name = var.project_name
    envinorment = var.envinorment
    common_tags = var.common_tags
    sg_tags = var.sg_tags
    sg_description = "SG Description for web"
    vpc_id = data.aws_ssm_parameter.vpc_id.value
    sg_name = "web"
    #sg_ingress_rule = var.mongodb_sg_ingress_rule
}

module "rabbitmq" {

    source = "git::https://github.com/RAVIRAVEEN/terraform-aws-security-group.git?ref=main"
    project_name = var.project_name
    envinorment = var.envinorment
    common_tags = var.common_tags
    sg_tags = var.sg_tags
    sg_description = "SG Description for rabbitmq"
    vpc_id = data.aws_ssm_parameter.vpc_id.value
    sg_name = "rabbitmq"
    #sg_ingress_rule = var.mongodb_sg_ingress_rule
}

module "payment" {

    source = "git::https://github.com/RAVIRAVEEN/terraform-aws-security-group.git?ref=main"
    project_name = var.project_name
    envinorment = var.envinorment
    common_tags = var.common_tags
    sg_tags = var.sg_tags
    sg_description = "SG Description for payment"
    vpc_id = data.aws_ssm_parameter.vpc_id.value
    sg_name = "payment"
    #sg_ingress_rule = var.mongodb_sg_ingress_rule
}


module "app_alb" {

    source = "git::https://github.com/RAVIRAVEEN/terraform-aws-security-group.git?ref=main"
    project_name = var.project_name
    envinorment = var.envinorment
    common_tags = var.common_tags
    sg_tags = var.sg_tags
    sg_description = "SG Description for app_alb"
    vpc_id = data.aws_ssm_parameter.vpc_id.value
    sg_name = "app_alb"
    #sg_ingress_rule = var.mongodb_sg_ingress_rule
}

module "web_alb" {

    source = "git::https://github.com/RAVIRAVEEN/terraform-aws-security-group.git?ref=main"
    project_name = var.project_name
    envinorment = var.envinorment
    common_tags = var.common_tags
    sg_tags = var.sg_tags
    sg_description = "SG Description for web_alb"
    vpc_id = data.aws_ssm_parameter.vpc_id.value
    sg_name = "web_alb"
    #sg_ingress_rule = var.mongodb_sg_ingress_rule
}

# app AlB should accept conections from through vpn.. since its a internal server
resource "aws_security_group_rule" "app_alb_vpn" {
source_security_group_id = module.vpn.sg_id
  type              = "ingress"
  from_port         = 80
  to_port           = 80
  protocol          = "tcp"
  security_group_id = module.app_alb.sg_id
 
}

resource "aws_security_group_rule" "app_alb_web" {
source_security_group_id = module.web.sg_id
  type              = "ingress"
  from_port         = 80
  to_port           = 80
  protocol          = "tcp"
  security_group_id = module.app_alb.sg_id
 
}

resource "aws_security_group_rule" "app_alb_catalogue" {
source_security_group_id = module.catalogue.sg_id
  type              = "ingress"
  from_port         = 80
  to_port           = 80
  protocol          = "tcp"
  security_group_id = module.app_alb.sg_id
 
}


resource "aws_security_group_rule" "app_alb_cart" {
source_security_group_id = module.cart.sg_id
  type              = "ingress"
  from_port         = 80
  to_port           = 80
  protocol          = "tcp"
  security_group_id = module.app_alb.sg_id
 
}

resource "aws_security_group_rule" "app_alb_user" {
source_security_group_id = module.user.sg_id
  type              = "ingress"
  from_port         = 80
  to_port           = 80
  protocol          = "tcp"
  security_group_id = module.app_alb.sg_id
 
}

resource "aws_security_group_rule" "app_alb_shipping" {
source_security_group_id = module.shipping.sg_id
  type              = "ingress"
  from_port         = 80
  to_port           = 80
  protocol          = "tcp"
  security_group_id = module.app_alb.sg_id
 
}

resource "aws_security_group_rule" "app_alb_payment" {
source_security_group_id = module.payment.sg_id
  type              = "ingress"
  from_port         = 80
  to_port           = 80
  protocol          = "tcp"
  security_group_id = module.app_alb.sg_id
 
}


resource "aws_security_group_rule" "web_alb_internet" {
cidr_blocks = [ "0.0.0.0/0" ]
  type              = "ingress"
  from_port         = 443
  to_port           = 443
  protocol          = "tcp"
  security_group_id = module.web_alb.sg_id
 
}

#openvpn 
resource "aws_security_group_rule" "vpn_home" {
security_group_id = module.vpn.sg_id
  type              = "ingress"
  from_port         = 0
  to_port           = 65535
  protocol          = "-1"
  cidr_blocks = ["0.0.0.0/0"] #ideally ur home public ip adress, but it frequently changes
}

resource "aws_security_group_rule" "mongodb_vpn" {
source_security_group_id = module.vpn.sg_id
  type              = "ingress"
  from_port         = 22
  to_port           = 22
  protocol          = "tcp"
  security_group_id = module.mongodb.sg_id
}


#mongodb accepting connections from catalogue
resource "aws_security_group_rule" "mongodb_catalogue" {
source_security_group_id = module.catalogue.sg_id
  type              = "ingress"
  from_port         = 27017
  to_port           = 27017
  protocol          = "tcp"
  security_group_id = module.mongodb.sg_id
}

resource "aws_security_group_rule" "mongodb_user" {
source_security_group_id = module.user.sg_id
  type              = "ingress"
  from_port         = 27017
  to_port           = 27017
  protocol          = "tcp"
  security_group_id = module.mongodb.sg_id
}


#redis accepting connections from cart & user
resource "aws_security_group_rule" "redis_vpn" {
source_security_group_id = module.vpn.sg_id
  type              = "ingress"
  from_port         = 22
  to_port           = 22
  protocol          = "tcp"
  security_group_id = module.redis.sg_id
}


resource "aws_security_group_rule" "redis_cart" {
source_security_group_id = module.cart.sg_id
  type              = "ingress"
  from_port         = 6379
  to_port           = 6379
  protocol          = "tcp"
  security_group_id = module.redis.sg_id
}


resource "aws_security_group_rule" "redis_user" {
source_security_group_id = module.user.sg_id
  type              = "ingress"
  from_port         = 6379
  to_port           = 6379
  protocol          = "tcp"
  security_group_id = module.redis.sg_id
}

#mysql accepting connections from shipping
resource "aws_security_group_rule" "mysql_vpn" {
source_security_group_id = module.vpn.sg_id
  type              = "ingress"
  from_port         = 22
  to_port           = 22
  protocol          = "tcp"
  security_group_id = module.mysql.sg_id
}


resource "aws_security_group_rule" "mysql_shipping" {
source_security_group_id = module.shipping.sg_id
  type              = "ingress"
  from_port         = 3306
  to_port           = 3306
  protocol          = "tcp"
  security_group_id = module.mysql.sg_id
}



resource "aws_security_group_rule" "rabbitmq_vpn" {
source_security_group_id = module.vpn.sg_id
  type              = "ingress"
  from_port         = 22
  to_port           = 22
  protocol          = "tcp"
  security_group_id = module.rabbitmq.sg_id
}


resource "aws_security_group_rule" "rabbitmq_payment" {
source_security_group_id = module.payment.sg_id
  type              = "ingress"
  from_port         = 5672
  to_port           = 5672
  protocol          = "tcp"
  security_group_id = module.rabbitmq.sg_id
}


resource "aws_security_group_rule" "catalogue_vpn" {
source_security_group_id = module.vpn.sg_id
  type              = "ingress"
  from_port         = 22
  to_port           = 22
  protocol          = "tcp"
  security_group_id = module.catalogue.sg_id
}

resource "aws_security_group_rule" "catalogue_app_alb" {
source_security_group_id = module.app_alb.sg_id
  type              = "ingress"
  from_port         = 8080
  to_port           = 8080
  protocol          = "tcp"
  security_group_id = module.catalogue.sg_id
}

resource "aws_security_group_rule" "user_app_alb" {
source_security_group_id = module.app_alb.sg_id
  type              = "ingress"
  from_port         = 8080
  to_port           = 8080
  protocol          = "tcp"
  security_group_id = module.user.sg_id
}

resource "aws_security_group_rule" "shipping_app_alb" {
source_security_group_id = module.app_alb.sg_id
  type              = "ingress"
  from_port         = 8080
  to_port           = 8080
  protocol          = "tcp"
  security_group_id = module.shipping.sg_id
}


resource "aws_security_group_rule" "cart_app_alb" {
source_security_group_id = module.app_alb.sg_id
  type              = "ingress"
  from_port         = 8080
  to_port           = 8080
  protocol          = "tcp"
  security_group_id = module.cart.sg_id
}


resource "aws_security_group_rule" "catalogue_vpn_http" {
  source_security_group_id = module.vpn.sg_id
  type                     = "ingress"
  from_port                = 8080
  to_port                  = 8080
  protocol                 = "tcp"
  security_group_id        = module.catalogue.sg_id
}


# resource "aws_security_group_rule" "catalogue_web" {
# source_security_group_id = module.web.sg_id
#   type              = "ingress"
#   from_port         = 8080
#   to_port           = 8080
#   protocol          = "tcp"
#   security_group_id = module.catalogue.sg_id
# }

# resource "aws_security_group_rule" "catalogue_cart" {
# source_security_group_id = module.cart.sg_id
#   type              = "ingress"
#   from_port         = 8080
#   to_port           = 8080
#   protocol          = "tcp"
#   security_group_id = module.catalogue.sg_id
# }

#user accepting connections from web & payment
resource "aws_security_group_rule" "user_vpn" {
source_security_group_id = module.vpn.sg_id
  type              = "ingress"
  from_port         = 22
  to_port           = 22
  protocol          = "tcp"
  security_group_id = module.user.sg_id
}


# resource "aws_security_group_rule" "user_web" {
# source_security_group_id = module.web.sg_id
#   type              = "ingress"
#   from_port         = 8080
#   to_port           = 8080
#   protocol          = "tcp"
#   security_group_id = module.user.sg_id
# }

# resource "aws_security_group_rule" "user_payment" {
# source_security_group_id = module.payment.sg_id
#   type              = "ingress"
#   from_port         = 8080
#   to_port           = 8080
#   protocol          = "tcp"
#   security_group_id = module.user.sg_id
# }


#cart accepting connections from web & shipping &  payment
resource "aws_security_group_rule" "cart_vpn" {
source_security_group_id = module.vpn.sg_id
  type              = "ingress"
  from_port         = 22
  to_port           = 22
  protocol          = "tcp"
  security_group_id = module.cart.sg_id
}



# resource "aws_security_group_rule" "cart_web" {
# source_security_group_id = module.web.sg_id
#   type              = "ingress"
#   from_port         = 8080
#   to_port           = 8080
#   protocol          = "tcp"
#   security_group_id = module.cart.sg_id
# }

# resource "aws_security_group_rule" "cart_shipping" {
# source_security_group_id = module.shipping.sg_id
#   type              = "ingress"
#   from_port         = 8080
#   to_port           = 8080
#   protocol          = "tcp"
#   security_group_id = module.cart.sg_id
# }

# resource "aws_security_group_rule" "cart_payment" {
# source_security_group_id = module.payment.sg_id
#   type              = "ingress"
#   from_port         = 8080
#   to_port           = 8080
#   protocol          = "tcp"
#   security_group_id = module.cart.sg_id
# }


#shipping accepting connections from web 
resource "aws_security_group_rule" "shipping_vpn" {
source_security_group_id = module.vpn.sg_id
  type              = "ingress"
  from_port         = 22
  to_port           = 22
  protocol          = "tcp"
  security_group_id = module.shipping.sg_id
}


resource "aws_security_group_rule" "shipping_web" {
source_security_group_id = module.web.sg_id
  type              = "ingress"
  from_port         = 8080
  to_port           = 8080
  protocol          = "tcp"
  security_group_id = module.shipping.sg_id
}


#payment accepting connections from web
resource "aws_security_group_rule" "payment_vpn" {
source_security_group_id = module.vpn.sg_id
  type              = "ingress"
  from_port         = 22
  to_port           = 22
  protocol          = "tcp"
  security_group_id = module.payment.sg_id
}


resource "aws_security_group_rule" "payment_web" {
source_security_group_id = module.web.sg_id
  type              = "ingress"
  from_port         = 8080
  to_port           = 8080
  protocol          = "tcp"
  security_group_id = module.payment.sg_id
}

#web accepting connections from internet
resource "aws_security_group_rule" "web_vpn" {
source_security_group_id = module.vpn.sg_id
  type              = "ingress"
  from_port         = 22
  to_port           = 22
  protocol          = "tcp"
  security_group_id = module.web.sg_id
}


resource "aws_security_group_rule" "web_internet" {
  cidr_blocks = ["0.0.0.0/0"]
  type              = "ingress"
  from_port         = 80
  to_port           = 80
  protocol          = "tcp"
  security_group_id = module.web.sg_id
}



resource "aws_security_group_rule" "payment_app_alb" {
source_security_group_id = module.app_alb.sg_id
  type              = "ingress"
  from_port         = 80
  to_port           = 80
  protocol          = "tcp"
  security_group_id = module.payment.sg_id
 
}


