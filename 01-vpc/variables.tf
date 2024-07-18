variable "cidr_block" {
  default = "10.3.0.0/16"
  }

variable "common_tags" {
    type = map
    default = {
        project = "roboshop"
        envinorment = "prod"
        terraform = "true"
    }
  
}
variable "vpc_tags" {
  default = {}
}

variable "project_name" {
  default = "roboshop"
}

variable "envinorment" { 
    default = "prod"
  
}
variable "ig_tags" {
  default = {}
}

variable "public_subnet_tags" {
    default = {}
  
}

variable "public_subnet_cidr" {
    default = ["10.0.10.0/24", "10.0.19.0/24"]

  
}

variable "private_subnet_cidr" {
    default = ["10.0.21.0/24", "10.0.29.0/24"]

  
}

variable "database_subnet_cidr" {
    default = ["10.0.31.0/24", "10.0.39.0/24"]

}

variable "database_subnet_tags" {
  default = {}
}

variable "is_peering_require" {
  default = true
  
}