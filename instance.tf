resource "aws_instance" "amazon_linux" {
  ami = "ami-04e35eeae7a7c5883"
  instance_type = "t2.micro"
  vpc_security_group_ids = [aws_security_group.aws_sg.id] 
  user_data = file("aws_ssh.sh")
 
  tags = {
    Name = "Terraform AWS"
  }
}
