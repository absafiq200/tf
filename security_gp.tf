resource "aws_security_group" "my_ssh_80" {
  name        = "my_80_sg"
  description = "Allow ssh"
  vpc_id      = data.aws_vpc.default.id

  ingress {
    description      = "allow 80"
    from_port        = 80
    to_port          = 80
    protocol         = "tcp"
    cidr_blocks      = [data.aws_vpc.default.cidr_block]
    ipv6_cidr_blocks = [data.aws_vpc.default.ipv6_cidr_block]
  }

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }

  tags = {
    Name = "my_80_sg"
  }
}