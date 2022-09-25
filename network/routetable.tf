resource "aws_route_table" "public" {
  vpc_id = aws_vpc.myvpc.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.gw.id
  }
  tags = {
    Name = "public route table"
  }
}

resource "aws_route_table_association" "a" {
  subnet_id      = aws_subnet.subnet_public1.id
  route_table_id = aws_route_table.public.id
}

resource "aws_route_table_association" "b" {
  subnet_id      = aws_subnet.subnet_public2.id
  route_table_id = aws_route_table.public.id
}



# resource "aws_route_table" "private" {
#   vpc_id = aws_vpc.myvpc.id

#   route {
#     cidr_block = "0.0.0.0/0"
#     nat_gateway_id = aws_internet_gateway.nat.id
#   }
#   tags = {
#     Name = "private route table"
#   }
# }

# resource "aws_route_table_association" "c" {
#   subnet_id      = aws_subnet.subnet_private1.id
#   route_table_id = aws_route_table.private.id
# }

# resource "aws_route_table_association" "d" {
#   subnet_id      = aws_subnet.subnet_private2.id
#   route_table_id = aws_route_table.private.id
# }