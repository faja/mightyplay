locals {
  general_ip_whitelist = [
    "ip1",
    "ip2",
    "ip3",
  ]

  g80  = [for i in local.general_ip_whitelist : ["80", i]]
  g443 = [for i in local.general_ip_whitelist : ["443", i]]
  g    = concat(local.g80, local.g443)
}

output "x" {
  value = local.g
}
