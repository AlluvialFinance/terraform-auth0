resource "auth0_connection" "this" {
  strategy = var.strategy
  name     = var.strategy == "email" || var.strategy == "sms" ? var.strategy : var.name

  options {
    name                   = var.strategy == "email" || var.strategy == "sms" ? var.strategy : var.name
    from                   = var.from
    subject                = var.subject
    syntax                 = var.syntax
    template               = var.template
    disable_signup         = var.disable_signup
    brute_force_protection = var.brute_force_protection
    non_persistent_attrs   = var.non_persistent_attrs

    totp {
      time_step = var.totp_time_step
      length    = var.totp_length
    }
  }
}

resource "auth0_connection_clients" "this" {
  connection_id   = auth0_connection.this.id
  enabled_clients = var.enabled_clients
}
