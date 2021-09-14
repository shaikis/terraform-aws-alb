#LB SG 
resource "aws_security_group" "alb_app_http" {
  name        = var.lb_sg_name
  vpc_id      = var.vpc_id

  ingress {
    from_port        = var.lb_ingress_from_port
    to_port          = var.lb_ingress_to_port
    protocol         = var.lb_ingress_protocol
    security_groups  = var.web_instance_sg_ids
  }

  egress {
    from_port       = var.lb_egress_from_port
    to_port         = var.lb_egress_to_port
    protocol        = var.lb_egress_protocol
    cidr_blocks     = var.cidr_blocks
  }

}