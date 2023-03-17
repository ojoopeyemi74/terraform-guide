# Private EC2 Instances Security Group Outputs
## private_sg_group_id
output "private_sg_group_id" {
  description = "The ID of the security group"
  #value       = module.private_sg.this_security_group_id
  value       = module.private_sg.security_group_id
}

## private_sg_group_vpc_id
output "private_sg_group_vpc_id" {
  description = "The VPC ID"
  #value       = module.private_sg.this_security_group_vpc_id    
  value       = module.private_sg.security_group_vpc_id
}

## private_sg_group_name
output "private_sg_group_name" {
  description = "The name of the security group"
  #value       = module.private_sg.this_security_group_name
  value       = module.private_sg.security_group_name
}

# LB sg id
/*
output "lb_sg_group_id" {
  description = "The ID of the security group"
  #value       = module.private_sg.this_security_group_id
  value       = module.lb_sg.security_group_id
}*/