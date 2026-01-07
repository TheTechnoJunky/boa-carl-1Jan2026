output "Carl-public-IP" {
  value = aws_instance.example.public_ip
}

output "Carl-private-IP" {
  value = aws_instance.example.private_ip
}