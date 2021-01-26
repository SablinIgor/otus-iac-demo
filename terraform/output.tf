output "load_balancer_ip" {
  value = digitalocean_loadbalancer.www-loadbalancer.ip
}

output "www_1_ip" {
  value = digitalocean_droplet.www-1.ipv4_address
}

output "www_2_ip" {
  value = digitalocean_droplet.www-2.ipv4_address
}