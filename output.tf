output "vpc_id" {
  value = data.aws_vpc.default.id
}

output "my_pv_subn" {
  value = data.aws_subnets.mypv_subnet.ids
}

