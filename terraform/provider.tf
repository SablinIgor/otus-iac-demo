terraform {
  backend "remote" {
    organization = "DevStand"

    workspaces {
      name = "iac-demo"
    }
  }

  required_providers {
    digitalocean = {
      source  = "digitalocean/digitalocean"
      version = "1.22.2"
    }
  }
}

variable "digitalocean_token" {}

provider "digitalocean" {
  token = var.digitalocean_token
}

data "digitalocean_ssh_key" "terraform" {
  name = "do-rsa"
}