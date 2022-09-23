resource "aws_lb_target_group" "my_tg" {
  name     = "apache-tg"
  port     = 80
  protocol = "HTTP"
  vpc_id   = data.aws_vpc.default.id
}

resource "aws_lb_target_group_attachment" "my_tg_ec2" {
  target_group_arn = aws_lb_target_group.my_tg.arn
  target_id        = aws_instance.my_ec2.id
}