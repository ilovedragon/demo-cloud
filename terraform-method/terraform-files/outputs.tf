output "instance_id" {
  description = "ID of the EC2 instance"
  value       = aws_instance.Webserver-terraform.id
}

output "instance_public_ip" {
  description = "Public IP address of the EC2 instance"
  value       = aws_instance.Webserver-terraform.public_ip
}

output "instance_public_dns" {
  description = "Public dns of the EC2 instance"
  value       = aws_instance.Webserver-terraform.public_dns
}

