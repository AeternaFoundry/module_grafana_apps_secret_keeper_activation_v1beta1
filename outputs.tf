output "apps_secret_keeper_activation_v1beta1s_id" {
  description = "Map of id values across all apps_secret_keeper_activation_v1beta1s, keyed the same as var.apps_secret_keeper_activation_v1beta1s except keys with no id are omitted"
  value       = { for k, v in grafana_apps_secret_keeper_activation_v1beta1.apps_secret_keeper_activation_v1beta1s : k => v.id if v.id != null && length(v.id) > 0 }
}
output "apps_secret_keeper_activation_v1beta1s_metadata" {
  description = "Map of metadata values across all apps_secret_keeper_activation_v1beta1s, keyed the same as var.apps_secret_keeper_activation_v1beta1s except keys with no metadata are omitted"
  value       = { for k, v in grafana_apps_secret_keeper_activation_v1beta1.apps_secret_keeper_activation_v1beta1s : k => v.metadata if v.metadata != null && length(v.metadata) > 0 }
}

