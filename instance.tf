resource "aws_instance" "amazon_linux" {
  ami = "ami-04e35eeae7a7c5883"
  instance_type = "t2.micro"
  vpc_security_group_ids = [aws_security_group.aws_sg.id] 
  key_name      = aws_key_pair.amazon_linux_ssh_key.key_name

  tags = {
    Name = "Terraform AWS"
  }
}

resource "aws_key_pair" "amazon_linux_ssh_key" {
  key_name   = "ssh_key.pub"
  public_key = file("~/.ssh/Terraform.pub")
}
