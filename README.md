# terraform-aws-alb
```
module "app_lb" {
    source = git@github.com:shaikis/terraform-aws-alb.git
    vpc_id                               = "vpc-id"
    subnet_ids                           = [sb-id1, id2]
    app_lb_name                          = "myAlb"
    is_this_internal                     = false
    lb_type                              = "Application"
    web_instance_sg_ids                  = [sg-abc]
    lb_ingress_protocol                  = TCP
    lb_ingress_from_port                 = 80
    lb_ingress_to_port                   = 80
    lb_egress_from_port                  = 0
    lb_egress_to_port                    = 0
    lb_egress_protocol                   = -1
    cidr_blocks                          = ["0.0.0.0/0"]
    app_lb_listener_port                 = 80
    app_lb_listener_protocol             = HTTP
    app_lb_target_group_name             = "myTargetGroup" 
    app_lb_target_group_port             = 80
    app_lb_target_group_protocol         = HTTP
    app_lb_target_group_hc_port          = 80
    app_lb_target_group_hc_protocol      = HTTP
}
```