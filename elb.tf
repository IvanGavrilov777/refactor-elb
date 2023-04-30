resource "aws_elb" "web" {
  name = "ELB-nginx"
  subnets         = ["${var.public_subnet_id}"]
  security_groups = ["${var.elb_security_group}"]
  instances       = ["${var.aws_instance_web_id}"]
   
  listener {
    instance_port     = 80
    instance_protocol = "http"
    lb_port           = 80
    lb_protocol       = "http"
  }
}

variable "public_subnet_id" {}
variable "elb_security_group" {}
variable "aws_instance_web_id" {}
