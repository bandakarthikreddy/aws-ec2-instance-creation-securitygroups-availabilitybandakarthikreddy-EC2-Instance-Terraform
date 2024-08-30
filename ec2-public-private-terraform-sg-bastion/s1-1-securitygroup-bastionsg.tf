module "public_bastion_sg" {
        source  = "terraform-aws-modules/security-group/aws"
        version = "5.1.2"

        name    = "public-bastion-sg"
        description     = "Security Group with SSH port open for everybody (IPv4 CIDR), egress ports are all world open"
        vpc_id  = module.vpc.vpc_id
        # INGRESS RULES AND CIDR BLOCKS
        ingress_rules   = ["ssh-tcp"]
        ingress_cidr_blocks     = ["0.0.0.0/0"]
        # EGRESS RULES - ALL - ALL OPEN
        egress_rules    = ["all-all"]
        tags    = local.common_tags
        }
