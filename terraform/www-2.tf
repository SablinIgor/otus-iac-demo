resource "digitalocean_droplet" "www-2" {
    image = "ubuntu-18-04-x64"
    name = "www-2"
    region = "fra1"
    size = "s-1vcpu-1gb"
    private_networking = true
    ssh_keys = [
      data.digitalocean_ssh_key.terraform.id
    ]
}  