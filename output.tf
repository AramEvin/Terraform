variable "username" {
  type    = string
  default = "ec2-user"
}

output "instance_username" {
  description = "default username linux"
  value       = var.username
}


output "instance_public_ip" {
  description = "Public IP address of the EC2 instance"
  value       = aws_instance.amazon_linux.public_ip
}
