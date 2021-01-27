resource "digitalocean_droplet" "web" {
  count              = 4 
  image              = "ubuntu-18-04-x64"
  name               = "www-${count.index}"
  region             = "fra1"
  size               = "s-1vcpu-1gb"
  private_networking = true
  ssh_keys = [
    data.digitalocean_ssh_key.terraform.id
  ]
}  
