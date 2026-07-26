resource "aws_instance" "my_ec2" {
  ami                         = "ami-0c55b159cbfafe1f0"   # your AMI
  instance_type               = "t3.micro"
  subnet_id                   = aws_subnet.public_subnet.id
  vpc_security_group_ids      = [aws_security_group.web_sg.id]
  associate_public_ip_address = true
  key_name                    = var.ec2_key_name

  tags = {
    Name = "${var.project_name}-ec2"
  }
}
