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

variable "envinorment" {
  default = "prod"
}
