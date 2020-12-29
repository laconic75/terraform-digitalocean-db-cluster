variable "cluster_name" {
  type = string
}

variable "database_engine" {
  type = string
}

variable "database_version" {
  type = string
}

variable "database_name" {
  type = string
}

variable "instance_size" {
  type    = string
  default = "db-s-1vcpu-1gb"
}

variable "region" {
  type    = string
  default = "nyc1"
}

variable "node_count" {
  type    = number
  default = 1
}

variable "frontend_webserver" {
  type = string
}
