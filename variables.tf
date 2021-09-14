variable "vpc_id" {}
variable "subnet_ids"{
    type=list
}
variable "app_lb_name" {}
variable "is_this_internal" {}
variable "lb_type" {}
variable "web_instance_sg_ids" {
    type = list
}
variable "lb_ingress_protocol" {
    default = "TCP"
}
variable "lb_ingress_from_port" {}
variable "lb_ingress_to_port" {}
variable "lb_egress_from_port" {}
variable "lb_egress_to_port" {}
variable "lb_egress_protocol" {}
variable "cidr_blocks" {}

variable "app_lb_listener_port" {}
variable "app_lb_listener_protocol" {}
variable "app_lb_target_group_name" {}
variable "app_lb_target_group_port" {}
variable "app_lb_target_group_protocol" {}
variable "app_lb_target_group_hc_port" {}
variable "app_lb_target_group_hc_protocol" {}