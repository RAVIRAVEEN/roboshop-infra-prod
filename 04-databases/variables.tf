variable "common_tags" {
    type = map
    default = {
        project = "roboshop"
        envinorment = "prod"
        terraform = "true"
    }
}
  

variable "project_name" { 
  default = "roboshop"
}

variable "environment" {
  default = "prod"
}


variable "zone_id" {
  default = "Z05755302BISQRJNR4ESX"
  
}
variable "zone_name" {
  default = "devopsrank.online"
  
}