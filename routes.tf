data "aws_vpc" "default" {

}


resource "aws_route_table" "my_rt_pvt" {
  vpc_id = data.aws_vpc.default.id
  tags = {
    Name = "myprivate_rt"
  }
}

resource "aws_route_table_association" "assco_rt" {
  for_each       = data.aws_subnets.mypv_subnet.ids
  subnet_id      = each.value
  route_table_id = aws_route_table.my_rt_pvt.id
}