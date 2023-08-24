variable "username" {
  type    = string
  default = "ec2-user"
}

variable "sg_ports" {
  type        = list(number)
  description = "list of ingress ports"
  default     = [80, 22, 8080]
}

output "instance_username" {
  description = "default username linux"
  value       = var.username
}


output "instance_public_ip" {
  description = "Public IP address of the EC2 instance"
  value       = aws_instance.amazon_linux.public_ip
}
