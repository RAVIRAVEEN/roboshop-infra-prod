data "aws_route53_zone" "selected" {
  name         = "devopsrank.online"
}

resource "aws_route53_record" "www" {
  zone_id = data.aws_route53_zone.selected.zone_id
  name    = "www.${data.aws_route53_zone.selected.name}"
  type    = "A"
  ttl     = "1"
  records = ["10.0.0.1"]
}