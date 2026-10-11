resource "grafana_apps_secret_keeper_activation_v1beta1" "apps_secret_keeper_activation_v1beta1s" {
  for_each = var.apps_secret_keeper_activation_v1beta1s


  dynamic "metadata" {
    for_each = each.value.metadata != null ? each.value.metadata : []
    content {
      folder_uid = metadata.value.folder_uid
      uid        = metadata.value.uid
    }
  }
}

