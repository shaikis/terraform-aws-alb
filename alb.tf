# App - Application Load Balancer
resource "aws_lb" "main_app_lb" {
  name = var.app_lb_name
  internal = var.is_this_internal
  load_balancer_type = var.lb_type
  security_groups = [aws_security_group.alb_app_http.id]
  subnets = var.subnet_ids
}

# App LB - Listener
resource "aws_lb_listener" "app_lb_listener" {
  load_balancer_arn = aws_lb.main_app_lb.arn
  port              = var.app_lb_listener_port
  protocol          = var.app_lb_listener_protocol

  default_action {
    type             = "forward"
    target_group_arn = aws_lb_target_group.app_lb_target_group.arn
  }
}

# App LB - Target Group
resource "aws_lb_target_group" "app_lb_target_group" {
  name     = var.app_lb_target_group_name
  port     = var.app_lb_target_group_port
  protocol = var.app_lb_target_group_protocol
  vpc_id   = var.vpc_id

  health_check {
    port     = var.app_lb_target_group_hc_port
    protocol = var.app_lb_target_group_hc_protocol
  }
}