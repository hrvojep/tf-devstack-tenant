variable "os_auth_url" {
    default = "http://10.123.123.123/identity"
}
variable "os_user" {
    default = "boromir"
}
variable "os_tenant" {
    default = "project-boromir"
}
variable "os_password" {
    default = "Hashi123!"
}
variable "os_region" {
    default = ""
}

variable "default_domain" {
    default = "default"
  
}

variable "network_name" {
    default = "gondor"
  
}
variable "instance_image" {
    default = "cirros-0.5.2-x86_64-disk"
  
}
variable "instance_flavor" {
    default = "t2.nano"
    type = "string"
  
}

variable "network_state" {
    
    default = true
  
}

variable "subnet_name" {
    default = "boromir_subnet"
  
}

variable "subnet_cidr" {
    default = "192.168.200.0/24"
  
}

variable "image_name" {
    default = "cirros-0.5.1-x86_64-disk"
  
}