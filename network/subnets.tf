resource "aws_subnet" "subnet_public1" {
  vpc_id     = aws_vpc.myvpc.id
  cidr_block = var.subnet_public1
  map_public_ip_on_launch = true
  availability_zone       = "us-east-1a"

  tags = {
    Name = "subnet_public1"
  }
}

resource "aws_subnet" "subnet_public2" {
  vpc_id     = aws_vpc.myvpc.id
  cidr_block = var.subnet_public2
  map_public_ip_on_launch = true
  availability_zone       = "us-east-1b"

  tags = {
    Name = "subnet_public2"
  }
}

resource "aws_subnet" "subnet_private1" {
  vpc_id     = aws_vpc.myvpc.id
  cidr_block = var.subnet_private1
  availability_zone       = "us-east-1a"

  tags = {
    Name = "subnet_private1"
  }
}

resource "aws_subnet" "subnet_private2" {
  vpc_id     = aws_vpc.myvpc.id
  cidr_block = var.subnet_private2
  availability_zone       = "us-east-1b"

  tags = {
    Name = "subnetprivate2"
  }
}