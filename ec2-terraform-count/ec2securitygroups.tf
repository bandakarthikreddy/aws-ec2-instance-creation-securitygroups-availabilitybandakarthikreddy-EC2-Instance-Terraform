resource "aws_security_group" "vpc-ssh" {
	name			= "vpc-ssh"
	description		= "Devops VPC_SSH"
	
	ingress {
		description	= "Allow Port 22"
		from_port	= 22
		to_port		= 22
		protocol	= "tcp"
		cidr_blocks	= ["0.0.0.0/0"]
	}
	egress {
		description	= "Allow all ip and port outbound"
		from_port	= 0
		to_port		= 0
		protocol	= "-1"
		cidr_blocks	= ["0.0.0.0/0"]
	}

	tags			= {
		Name		= "vpc-ssh"
	}
}
resource "aws_security_group" "vpc-web" {
        name                    = "vpc-web"
        description             = "Devops VPC_WEB"

        ingress {
                description     = "Allow Port 80"
                from_port       = 80
                to_port         = 80
                protocol        = "tcp"
                cidr_blocks     = ["0.0.0.0/0"]
        }
        ingress {
                description     = "Allow Port 443"
                from_port       = 443
                to_port         = 443
                protocol        = "tcp"
                cidr_blocks     = ["0.0.0.0/0"]
        }
        egress {
                description     = "Allow all ip and port outbound"
                from_port       = 0
                to_port         = 0
                protocol        = "-1"
                cidr_blocks     = ["0.0.0.0/0"]
        }

        tags                    = {
                Name            = "vpc-web"
        }
}
