module "lb_sg" {
  source = "terraform-aws-modules/security-group/aws"

  name        = "lb-sg"
  description = "Security group with HTTP and SSH port open or the entire VPC "
  vpc_id      = module.vpc.vpc_id

  ingress_cidr_blocks      = ["0.0.0.0/0"]
  ingress_rules            = ["http-80-tcp", "https-443-tcp"]
  
  #Egress Rules
  egress_rules = ["all-all"]

  tags = local.common_tags 
}