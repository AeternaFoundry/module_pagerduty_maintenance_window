resource "pagerduty_maintenance_window" "maintenance_windows" {
  for_each = var.maintenance_windows

  end_time    = each.value.end_time
  services    = each.value.services
  start_time  = each.value.start_time
  description = each.value.description
}

