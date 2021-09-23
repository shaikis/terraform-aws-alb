output "app_lb_target_group_arn" {
    value = aws_lb_target_group.app_lb_target_group.arn
}

output "app_lb_arn" {
    value = aws_lb.main_app_lb.arn
}

output "alb_app_http_sg_id" {
    value = aws_security_group.alb_app_http_sg.id
}

output "private_cidr" {
    value = ""
}
