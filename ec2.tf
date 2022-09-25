resource "aws_instance" "bastion" {
  ami                    = "ami-026b57f3c383c2eec"
  instance_type          = "t2.micro"
  subnet_id              = module.network.subnet_public1
  vpc_security_group_ids = [module.network.securityfroup_ssh]
  provisioner "local-exec" {
    command = "echo ${self.public_ip} >> bastion.ip.txt"
  }
  tags = {
    Name = "bastion1"
  }
}

resource "aws_instance" "application" {
  ami                    = "ami-026b57f3c383c2eec"
  instance_type          = "t2.micro"
  subnet_id              = module.network.subnet_private1
  vpc_security_group_ids = [module.network.securitygroup_ssh_3000]
  tags = {
    Name = "application"
  }
}