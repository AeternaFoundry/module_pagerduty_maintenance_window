output "maintenance_windows_id" {
  description = "Map of id values across all maintenance_windows, keyed the same as var.maintenance_windows except keys with no id are omitted"
  value       = { for k, v in pagerduty_maintenance_window.maintenance_windows : k => v.id if v.id != null && length(v.id) > 0 }
}
output "maintenance_windows_description" {
  description = "Map of description values across all maintenance_windows, keyed the same as var.maintenance_windows except keys with no description are omitted"
  value       = { for k, v in pagerduty_maintenance_window.maintenance_windows : k => v.description if v.description != null && length(v.description) > 0 }
}
output "maintenance_windows_end_time" {
  description = "Map of end_time values across all maintenance_windows, keyed the same as var.maintenance_windows except keys with no end_time are omitted"
  value       = { for k, v in pagerduty_maintenance_window.maintenance_windows : k => v.end_time if v.end_time != null && length(v.end_time) > 0 }
}
output "maintenance_windows_services" {
  description = "Map of services values across all maintenance_windows, keyed the same as var.maintenance_windows except keys with no services are omitted"
  value       = { for k, v in pagerduty_maintenance_window.maintenance_windows : k => v.services if v.services != null && length(v.services) > 0 }
}
output "maintenance_windows_start_time" {
  description = "Map of start_time values across all maintenance_windows, keyed the same as var.maintenance_windows except keys with no start_time are omitted"
  value       = { for k, v in pagerduty_maintenance_window.maintenance_windows : k => v.start_time if v.start_time != null && length(v.start_time) > 0 }
}

