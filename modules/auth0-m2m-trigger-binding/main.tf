resource "auth0_trigger_binding" "m2m_flow" {

  dynamic "actions" {
    for_each = toset(var.actions)
    content {
      id           = actions.value["id"]
      display_name = actions.value["name"]
    }
  }

  trigger = "credentials-exchange"
}
