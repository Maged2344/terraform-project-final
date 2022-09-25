# resource "aws_nat_gateway" "nat" {
#   allocation_id = aws_eip.lb.id
#   subnet_id     = aws_subnet.subnet_public1.id

#   tags = {
#     Name = "gw NAT"
#   }
#     depends_on = [aws_internet_gateway.gateway]
# }