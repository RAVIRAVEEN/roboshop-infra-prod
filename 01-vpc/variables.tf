variable "cidr_block" {
  default = "10.1.1.0/16"
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
    default = ["10.2.1.0/24", "1.2.2.0/24"]

  
}

variable "private_subnet_cidr" {
    default = ["10.2.11.0/24", "10.2.12.0/24"]

  
}

variable "database_subnet_cidr" {
    default = ["10.2.21.0/24", "10.2.22.0/24"]

}

variable "database_subnet_tags" {
  default = {}
}

variable "is_peering_require" {
  default = true
  
}