variable "common_tags" {
    type = map
    default = {
        project = "roboshop"
        envinorment = "dev"
        terraform = "true"
    }
}

variable "tags" {
  default = {
    component ="catalogue"
  }
  
}
  variable "zone_name" {
    default = "devopsrank.online"
    
  }

variable "project_name" { 
  default = "roboshop"
}

variable "environment" {
  default = "dev"
}

