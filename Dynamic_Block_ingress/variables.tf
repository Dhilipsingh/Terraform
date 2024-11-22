variable "region" {
  #default =""
}
variable "access_key" {
  
}
variable "secret_key" {
  
}
variable "cidr_block" {
    type = string
    #default = ""
}
/*variable "ingress" {
    type = map(object({
    port = number
    protocol = string
    cidr_blocks = list(string)
  }))
  default = {
    "80" = {
      port = 80
      protocol = "tcp"
      cidr_blocks = ["0.0.0.0/0"]
      
    }
  }
}*/