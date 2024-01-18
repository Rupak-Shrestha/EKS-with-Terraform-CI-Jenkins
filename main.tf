#VPC

module "vpc" {
  source = "terraform-aws-modules/vpc/aws"

  name = "vpc-jenkins"
  cidr = var.vpc-cidr

  azs             = data.aws_availability_zone.azs.names
  public_subnets  = var.public_subnets

  enable_dns_hostnames = true

  tags = {
    Name = "vpc-jenkins"
    Terraform = "true"
    Environment = "dev"
  }
}


#SG


#EC2