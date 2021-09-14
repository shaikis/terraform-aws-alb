output "app_lb_target_group_arn"{
    value = aws_lb_target_group.app_lb_target_group.arn
}

output "app_lb_arn" {
    value = aws_lb.main_app_lb.arn
}