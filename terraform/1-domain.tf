# resource "cloudflare_record" "example" {
#   zone_id = var.cloudflare_zone_id
#   type    = "CNAME"
#   name    = "@"
#   value   = "cname.vercel-dns.com." # vercel
#   ttl     = 3600
# }

resource "cloudflare_record" "gigachungus_dev" {
  for_each = toset([
    "@", "www"
  ])

  zone_id = var.CLOUDFLARE_ZONE_ID
  type    = "CNAME"
  name    = each.key
  value   = "cname.vercel-dns.com." # vercel
  ttl     = 3600
}
