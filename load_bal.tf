resource "aws_lb" "my_lb" {
  name                       = "my-test-lb"
  internal                   = false
  load_balancer_type         = "application"
  security_groups            = [aws_security_group.my_ssh_if.id]
  subnets                    = ["subnet-07980e951c301b326"]
  enable_deletion_protection = true

}

resource "aws_lb_target_group_attachment" "my_attach_tg" {
  target_group_arn = aws_lb_target_group.my_tg.arn
  target_id        = aws_lb.my_lb.id
}