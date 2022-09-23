output "vpc_id" {
  value = data.aws_vpc.default.id
}

output "my_pv_subn" {
  value = data.aws_subnets.mypv_subnet.ids
}

output "my_sg_id" {
  value = aws_security_group.my_ssh_80.id
}
