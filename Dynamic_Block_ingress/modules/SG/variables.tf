variable "vpc_id" {
  description      =  "put your vpc id"
}
variable "ingress" {
    type = map(object({
    port = number
    protocol = string
    cidr_blocks = list(string)
  }))
    default = {
    "80" = {
      port = 80
      protocol = "tcp"
      cidr_blocks = ["10.0.0.0/16"]
            
    }
    }
}

