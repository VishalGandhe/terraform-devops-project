#Outputs for counts and instance details

# output "ec2_public_ip" {
#   description = "Public IP of the EC2 instance"
#   value       = aws_instance.my_instance[*].public_ip
  
# }
# output "ec2_instance_dns" {
#   description = "ID of the EC2 instance"
#   value       = aws_instance.my_instance[*].public_dns
# }

# output "ec2_private_ip" {
#   description = "Private IP of the EC2 instance"
#   value       = aws_instance.my_instance[*].private_ip
  
# }


# this is using for_each to create multiple instances with different types
output "ec2_public_ip" {
value = [
  for instance in aws_instance.my_instance : instance.public_ip
]
}


output "ec2_instance_dns" {
value = [
  for instance in aws_instance.my_instance : instance.public_dns
]
}

output "ec2_private_ip" {
value = [
  for instance in aws_instance.my_instance : instance.private_ip
]
}