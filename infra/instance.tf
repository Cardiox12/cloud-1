resource "scaleway_instance_ip" "server_ip" {}
resource "scaleway_instance_volume" "data" {
    size_in_gb = 10
    type = "l_ssd"
}

resource "scaleway_instance_server" "cloud-1-instance" {
    type  = "DEV1-S"
    image = "docker"
    name = "cloud-1"
    ip_id = scaleway_instance_ip.server_ip.id
    additional_volume_ids = [ scaleway_instance_volume.data.id ]
    root_volume {
      size_in_gb = 10
    }
    security_group_id = scaleway_instance_security_group.cloud-1-security-group.id
  }

resource "scaleway_instance_security_group" "cloud-1-security-group" {
  inbound_default_policy  = "drop"
  outbound_default_policy = "accept"
  inbound_rule {
    action = "accept"
    port   = "22"
  }
  inbound_rule {
    action = "accept"
    port   = "80"
  }
  inbound_rule {
    action = "accept"
    port   = "443"
  }
}