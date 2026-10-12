variable "kmip_secret_scopes" {
  description = <<EOT
Map of kmip_secret_scopes, attributes below
Required:
    - path
    - scope
Optional:
    - force
    - namespace
EOT

  type = map(object({
    path      = string
    scope     = string
    force     = optional(bool)
    namespace = optional(string)
  }))
  # Note: 1 additional provider-side validator is enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

