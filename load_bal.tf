resource "aws_lb" "my_lb" {
  name                       = "my-test-lb"
  internal                   = false
  load_balancer_type         = "application"
  security_groups            = [aws_security_group.my_ssh_if.id]
  subnets                    = ["subnet-07980e951c301b326", "subnet-0ef8ff159a6518374", "subnet-094ebdafd1dfe224b"]
  enable_deletion_protection = false

}

resource "aws_lb_listener" "front_end" {
  load_balancer_arn = aws_lb.my_lb.arn
  port              = "80"
  protocol          = "HTTP"

  default_action {
    type             = "forward"
    target_group_arn = aws_lb_target_group.my_tg.arn
  }
}