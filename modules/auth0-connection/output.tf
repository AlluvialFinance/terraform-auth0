output "connection_id" {
  value = auth0_connection.this.id
}

output "connection_name" {
  value = auth0_connection.this.name
}

output "auth0_connection_clients_id" {
  value = auth0_connection_clients.this.id
}
