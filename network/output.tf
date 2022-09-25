output vpc_module_id {
  value       = aws_vpc.myvpc.id
}

output subnet_public1 {
  value = aws_subnet.subnet_public1.id
}
output subnet_public2 {
  value = aws_subnet.subnet_public2.id
}
output subnet_private1 {
  value = aws_subnet.subnet_private1.id
}
output subnet_private2 {
  value = aws_subnet.subnet_private2.id
}

output securityfroup_ssh {
  value = aws_security_group.allow_ssh.id
}

output securitygroup_ssh_3000 {
  value = aws_security_group.allow_ssh_3000.id
}