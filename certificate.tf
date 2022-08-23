module "certificate" {
  source = "ekozynin/ssl-certificate/aws"
  version = "~> 2.0"
  providers = {
    // Cloudfront only supports ACM certs issues in us-east-1
    aws = aws.cloudfront
  }

  domain_name    = var.from_domain_name
  hosted_zone_id = var.hosted_zone_id
}