terraform {
    backend "remote" {
    organization = "DevStand"

    workspaces {
      name = "iac-demo"
    }
  }
  
  required_providers {
    digitalocean = {
      source = "digitalocean/digitalocean"
      version = "1.22.2"
    }
  }
}

variable "do_token" {}

provider "digitalocean" {
  token = var.do_token
}

data "digitalocean_ssh_key" "terraform" {
  name = "do-rsa"
}