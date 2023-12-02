output "hello-world" {
  description = "Print Hello World"
  value       = "Hello World"
}

output "instance_id" {
  description = "output the EC2 instance ID"
  value       = aws_instance.app_server.id
}
