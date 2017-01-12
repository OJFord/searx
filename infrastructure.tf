variable "domain" {}

variable "host" {}

resource "cloudflare_record" "searx" {
  domain  = "${var.domain}"
  name    = "searx"
  value   = "${var.host}"
  type    = "A"
  proxied = "true"
}
