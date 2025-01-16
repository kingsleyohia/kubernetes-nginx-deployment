#Creating elastic ip for nat gateway
resource "aws_eip" "elastic_ip_nat" {
  tags = {
    Name = "${var.environment}-nat-ip"
  }
}

#Creating nat gateway and attaching elastic ip
resource "aws_nat_gateway" "ngw" {
  allocation_id = aws_eip.elastic_ip_nat.id
  subnet_id     = aws_subnet.public_subnet[0].id
  tags = {
    Name = "${var.environment}-ngw"
  }
}
