output "kmip_secret_scopes_id" {
  description = "Map of id values across all kmip_secret_scopes, keyed the same as var.kmip_secret_scopes except keys with no id are omitted"
  value       = { for k, v in vault_kmip_secret_scope.kmip_secret_scopes : k => v.id if v.id != null && length(v.id) > 0 }
}
output "kmip_secret_scopes_force" {
  description = "Map of force values across all kmip_secret_scopes, keyed the same as var.kmip_secret_scopes except keys with no force are omitted"
  value       = { for k, v in vault_kmip_secret_scope.kmip_secret_scopes : k => v.force if v.force != null }
}
output "kmip_secret_scopes_namespace" {
  description = "Map of namespace values across all kmip_secret_scopes, keyed the same as var.kmip_secret_scopes except keys with no namespace are omitted"
  value       = { for k, v in vault_kmip_secret_scope.kmip_secret_scopes : k => v.namespace if v.namespace != null && length(v.namespace) > 0 }
}
output "kmip_secret_scopes_path" {
  description = "Map of path values across all kmip_secret_scopes, keyed the same as var.kmip_secret_scopes except keys with no path are omitted"
  value       = { for k, v in vault_kmip_secret_scope.kmip_secret_scopes : k => v.path if v.path != null && length(v.path) > 0 }
}
output "kmip_secret_scopes_scope" {
  description = "Map of scope values across all kmip_secret_scopes, keyed the same as var.kmip_secret_scopes except keys with no scope are omitted"
  value       = { for k, v in vault_kmip_secret_scope.kmip_secret_scopes : k => v.scope if v.scope != null && length(v.scope) > 0 }
}

