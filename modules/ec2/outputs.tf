output "app_eip" {
  value = aws_eip.ec2_demo_terraform_addr.public_ip
}

output "app_instance" {
  value = aws_instance.ec2_demo_terraform_web.id
}
