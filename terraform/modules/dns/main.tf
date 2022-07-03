resource "aws_route53_record" "main" {
  zone_id = var.route53_zone_id
  name    = var.dns_name
  type    = "A"
  ttl     = "300"
  records = [var.public_ip]
}
