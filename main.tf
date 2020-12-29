terraform {
  required_providers {
    digitalocean = {
      source  = "digitalocean/digitalocean"
      version = "~> 1.22.2"
    }
  }
}

resource "digitalocean_database_cluster" "db-cluster" {
  name       = var.cluster_name
  engine     = var.database_engine
  version    = var.database_version
  size       = var.instance_size
  region     = var.region
  node_count = var.node_count
}

resource "digitalocean_database_db" "database" {
  cluster_id = digitalocean_database_cluster.db-cluster.id
  name       = var.database_name
}

resource "digitalocean_database_firewall" "db-firewall" {
  cluster_id = digitalocean_database_cluster.db-cluster.id
  
  rule {
    type = "droplet"
    value = var.frontend_webserver
  }
}

