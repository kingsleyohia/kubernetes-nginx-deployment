# Public Route Table
resource "aws_route_table" "public_rt" {
  vpc_id = aws_vpc.vpc.id
  tags = {
    Name = "${var.environment}-public-route-table"
  }
}

resource "aws_route_table_association" "public" {
  count          = length(var.public_subnets)
  subnet_id      = aws_subnet.public_subnet[count.index].id
  route_table_id = aws_route_table.public_rt.id
}


# Route to Internet for Public Subnets
resource "aws_route" "public_internet_access" {
  route_table_id         = aws_route_table.public_rt.id
  destination_cidr_block = "0.0.0.0/0"
  gateway_id             = aws_internet_gateway.igw.id
}

# Private Route Table
resource "aws_route_table" "private_rt" {
  vpc_id = aws_vpc.vpc.id
  tags = {
    Name = "${var.environment}-private-route-table"
  }
}

resource "aws_route_table_association" "private" {
  count          = length(var.private_subnets)
  subnet_id      = aws_subnet.private_subnet[count.index].id
  route_table_id = aws_route_table.private_rt.id
}

# Route for Internet access through NAT Gateway
resource "aws_route" "private_nat_gateway" {
  route_table_id          = aws_route_table.private_rt.id
  destination_cidr_block  = "0.0.0.0/0"
  nat_gateway_id          = aws_nat_gateway.ngw.id
}





