resource "aws_instance" "tfproject_instance" {
  ami             = data.aws_ami.latest_ubuntu.id
  instance_type   = var.instance_type
  security_groups = [var.instance_sg]
  subnet_id       = var.instance_subnet
  user_data       = file("${path.module}/script.sh")
  provider        = aws.tfproject_region
  tags            = { Name = var.instance_name }

}

