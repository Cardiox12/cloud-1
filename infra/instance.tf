resource "scaleway_instance_ip" "server_ip" {}
resource "scaleway_instance_volume" "data" {
    size_in_gb = 10
    type = "l_ssd"
}

resource "scaleway_instance_server" "my-instance" {
    type  = "DEV1-S"
    image = "docker"
    name = "cloud-1"
    ip_id = scaleway_instance_ip.server_ip.id
    additional_volume_ids = [ scaleway_instance_volume.data.id ]
    root_volume {
      size_in_gb = 10
    }
  }