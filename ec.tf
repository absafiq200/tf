resource "aws_instance" "my_ec2" {
  ami                         = var.ami_id
  instance_type               = var.inst_type
  key_name                    = var.linux_key_pair
  subnet_id                   = data.aws_subnets.mypv_subnet.ids[0]
  vpc_security_group_ids      = [aws_security_group.my_ssh_80.id]
  user_data_base64            = file("user_data.sh")
  associate_public_ip_address = "false"

  root_block_device {
    volume_size           = var.my_root_volume_size
    volume_type           = var.my_root_volume_type
    delete_on_termination = true
    encrypted             = true
  }

  ebs_block_device {
    device_name           = "/dev/xvda"
    volume_size           = var.my_data_volume_size
    volume_type           = var.my_data_volume_type
    encrypted             = true
    delete_on_termination = true
  }
}
/*
resource "aws_ami_from_instance" "my_ami" {
  name               = "my ami image"
  source_instance_id = aws_instance.my_ec2.id
  depends_on         = [aws_instance.my_ec2]
}
*/
resource "aws_instance" "my_ec2_2" {
  ami                         = var.ami_id
  instance_type               = var.inst_type
  key_name                    = var.linux_key_pair
  subnet_id                   = data.aws_subnets.mypv_subnet.ids[1]
  vpc_security_group_ids      = [aws_security_group.my_ssh_80.id]
  user_data_base64                   = file("user_data2.sh")
  associate_public_ip_address = "false"

  root_block_device {
    volume_size           = var.my_root_volume_size
    volume_type           = var.my_root_volume_type
    delete_on_termination = true
    encrypted             = true
  }

  ebs_block_device {
    device_name           = "/dev/xvda"
    volume_size           = var.my_data_volume_size
    volume_type           = var.my_data_volume_type
    encrypted             = true
    delete_on_termination = true
  }

}

/*
resource "aws_ami_from_instance" "my_ami_2" {
  name               = "my ami image"
  source_instance_id = aws_instance.my_ec2_2.id
  depends_on         = [aws_instance.my_ec2_2]
}
*/