resource "vault_kmip_secret_scope" "kmip_secret_scopes" {
  for_each = var.kmip_secret_scopes

  path      = each.value.path
  scope     = each.value.scope
  force     = each.value.force
  namespace = each.value.namespace
}

