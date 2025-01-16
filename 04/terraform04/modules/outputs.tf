output "vpc_id" {
  value = aws_vpc.vpc.id
}

output "public_subnets" {
  value = aws_subnet.public_subnet[*].id
}

output "private_subnets" {
  value = aws_subnet.private_subnet[*].id
}

output "igw_id" {
  value = aws_internet_gateway.igw.id
}

output "nat_gateways" {
  value = aws_nat_gateway.ngw[*].id
}

#output "public_route_table_id" {
#  value = aws_route_table.public_subnet.id
#}

