data "aws_vpc" "default" {

}


resource "aws_route_table" "my_rt_pvt" {
  vpc_id = data.aws_vpc.default.id
  tags = {
    Name = "myprivate_rt"
  }
} 