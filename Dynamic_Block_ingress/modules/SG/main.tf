resource "aws_security_group" "SG" {
    vpc_id      = var.vpc_id
    name        = "allow_tls"
    description = "Allow TLS inbound traffic and all outbound traffic"
dynamic "ingress" {
  for_each = var.ingress
  content {

    description      = "allow traffic sandbox"
    from_port        = ingress.value.port
    to_port          = ingress.value.port
    protocol         = ingress.value.protocol
    cidr_blocks      = ingress.value.cidr_blocks
    
  }
}
 /*ingress {
    description      = "allow traffic"
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
  }
*/
  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
  }

  tags = {
    "karpenter.sh/discovery" = "karpenter"
  }
}