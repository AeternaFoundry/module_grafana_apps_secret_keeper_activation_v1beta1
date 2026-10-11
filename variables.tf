variable "apps_secret_keeper_activation_v1beta1s" {
  description = <<EOT
Map of apps_secret_keeper_activation_v1beta1s, attributes below
Optional:
    - metadata (block):
        - folder_uid (optional)
        - uid (required)
EOT

  type = map(object({
    metadata = optional(list(object({
      folder_uid = optional(string)
      uid        = string
    })))
  }))
}

