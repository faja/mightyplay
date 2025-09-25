terraform {
  required_providers {
    grafana = {
      source  = "grafana/grafana"
      version = "4.10.0"
    }
  }
}

// https://registry.terraform.io/providers/grafana/grafana/latest/docs
provider "grafana" {
  url  = "http://127.0.0.1:3000"
  auth = "admin:admin"
}

// https://registry.terraform.io/providers/grafana/grafana/latest/docs/resources/data_source
resource "grafana_data_source" "prometheus" {
  type        = "prometheus"
  name        = "prometheus"
  uid         = "prometheus"
  url         = "http://prometheus:9090"
  access_mode = "proxy"
  is_default  = true
  org_id      = "1"
}

#resource "grafana_folder" "xyzzy" {
#  title = "Xyzzy"
#}
#
#resource "grafana_dashboard" "xyzzy" {
#  folder      = grafana_folder.xyzzy.id
#  config_json = file("${path.module}/../dashboards/dashboard.json")
#}

