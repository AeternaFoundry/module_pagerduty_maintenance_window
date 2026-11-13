output "maintenance_windows_id" {
  description = "Map of id values across all maintenance_windows, keyed the same as var.maintenance_windows"
  value       = { for k, v in pagerduty_maintenance_window.maintenance_windows : k => v.id }
}
output "maintenance_windows_description" {
  description = "Map of description values across all maintenance_windows, keyed the same as var.maintenance_windows"
  value       = { for k, v in pagerduty_maintenance_window.maintenance_windows : k => v.description }
}
output "maintenance_windows_end_time" {
  description = "Map of end_time values across all maintenance_windows, keyed the same as var.maintenance_windows"
  value       = { for k, v in pagerduty_maintenance_window.maintenance_windows : k => v.end_time }
}
output "maintenance_windows_services" {
  description = "Map of services values across all maintenance_windows, keyed the same as var.maintenance_windows"
  value       = { for k, v in pagerduty_maintenance_window.maintenance_windows : k => v.services }
}
output "maintenance_windows_start_time" {
  description = "Map of start_time values across all maintenance_windows, keyed the same as var.maintenance_windows"
  value       = { for k, v in pagerduty_maintenance_window.maintenance_windows : k => v.start_time }
}

