
#Creating Private hosted zone
resource "aws_route53_zone" "private_zone" {
  name = var.domain_name
  vpc {
    vpc_id = aws_vpc.vpc.id
  }
}

#Creating A record in hosted zone
resource "aws_route53_record" "record" {
  zone_id = aws_route53_zone.private_zone.id
  name    = "app"
  type    = "A"
  ttl     = 300
  records = ["10.0.1.10"]
}