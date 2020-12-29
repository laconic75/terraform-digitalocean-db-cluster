output "database_cluster_id" {
  value = digitalocean_database_cluster.db-cluster.id
}

output "database_firewall_id" {
  value = digitalocean_database_firewall.db-firewall.id
}
