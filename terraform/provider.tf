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

variable "DIGITALOCEAN_TOKEN" {}

provider "digitalocean" {
  token = var.DIGITALOCEAN_TOKEN
}

data "digitalocean_ssh_key" "terraform" {
  name = "do-rsa"
}