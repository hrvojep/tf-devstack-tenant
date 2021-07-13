variable "os_auth_url" {
    default = "http://192.168.1.123/identity"
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
    default = "m1.tiny"
    type = string
  
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

variable "ssh_public_key" {
  default = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQC8xYZMmdFegfk4NCog1casM50GMQOzunGt1gjO0TNLPI4aJvfwL3BDyEMmvzvkyLKlAxhuQ9nPjYW5X6BK1kihHIBgpz3lweaXJWE0ITJEGjLpniSBvvXsQQA/Dq7wIc/l383aEaiqYDzmUhcndBkCPcHPd7WyGTQJl76Oh+ot0gabQzy/qfXdZNCnAIyCrVV9ZVlZmvEVcPLWq2wtP3y/9m027GVTh01KxaZjVHvT5gvjsniN3ZI908HsSTTwHXykXQQCTIOTfKPVvpr3lSiFomzGKVLQU8bkRz86ICn5UlXUNlzgNQbRA/JBM2W+o8XbzYhyoL+srQ7upPuWkcRrYYNnCk6Ag9fnUXTFAjOJdKZdhrxF2AuM/uEp+M0JwSwsCgilnm5nztZfRf9QHgKuYAvelu4325TtazIPXUiwXAsIKCl0UyWI5YTRu3lO8P3fpG0HyMIG1y0MukTMUEP13kp3sqjif374JIKdThksjEetIYw2H9DU5WEVVXrHXUs= burkey@erebor.local"
}