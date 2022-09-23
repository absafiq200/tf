data "aws_subnets" "mypv_subnet" {
  filter {
    name   = "tag:Type"
    values = ["Private"]
  }

}


