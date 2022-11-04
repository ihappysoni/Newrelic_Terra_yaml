
# resource "newrelic_synthetics_alert_condition" "foo" {
#   policy_id = newrelic_alert_policy.Test_terra.id

#   name        = "syn_alert_"
#   monitor_id  = newrelic_synthetics_step_monitor.monitor.id
#   runbook_url = "https://www.ihappysoni.netlify.com"
# }

# resource "newrelic_synthetics_step_monitor" "monitor" {
#   name                                    = "Step_Monitor_Portfolio_1"
#   enable_screenshot_on_failure_and_script = true
#   locations_public                        = ["US_EAST_1", "US_EAST_2"]
#   period                                  = "EVERY_6_HOURS"
#   status                                  = "ENABLED"
#   steps {
#     ordinal = 0
#     type    = "NAVIGATE"
#     values  = ["https://www.ihappysoni.netlify.com"]
#   }
#   tag {
#     key    = "some_key"
#     values = ["some_value"]
#   }
# }