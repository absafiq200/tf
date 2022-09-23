resource "aws_instance" "my_ec2" {
  ami                    = var.ami_id
  instance_type          = var.inst_type
  key_name               = var.linux_key_pair
  subnet_id              = data.aws_subnets.mypv_subnet.ids[0]
  vpc_security_group_ids = [aws_security_group.my_ssh_80.id]
}