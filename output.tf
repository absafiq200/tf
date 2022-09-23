output "vpc_id" {
  description = "my vpc id"
  value = data.aws_vpc.default.id
}

output "my_pv_subn" {
  description = "my pv id"
  value = data.aws_subnets.mypv_subnet.ids
}

output "my_sg_id" {
  description = "my security group id"
  value = aws_security_group.my_ssh_80.id
}

output "my_ec2_id" {
  description = "my ec2 id"
  value       = aws_instance.my_ec2.id
}

output "ami_op" {
  value = aws_ami_from_instance.my_ami
}
