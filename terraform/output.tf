output "load_balancer_ip" {
  value = digitalocean_loadbalancer.www-loadbalancer.ip
}