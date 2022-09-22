data "aws_subnets" "mypv_subnet" {
  filter = {
    name  = "tag:Type"
    value = ["Private"]
  }
}

output "my_pv_subn" {
  value = data.aws_subnets.mypv_subnet.id
}
