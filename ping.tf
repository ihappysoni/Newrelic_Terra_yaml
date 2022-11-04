resource "newrelic_synthetics_monitor" "ping-monitor" {
  custom_header {
    name  = "Ping_Monitor_Portfolio"
    value = "simpleMonitor"
  }
  treat_redirect_as_failure = true
  validation_string         = "success"
  bypass_head_request       = true
  verify_ssl                = true
  locations_public           = ["US_EAST_1"]
  name                      = "Ping_Monitor_Portfolio"
  period                    = "EVERY_6_HOURS"
  status                    = "ENABLED"
  type                      = "SIMPLE"
  tag {
    key    = "some_key"
    values = ["some_value"]
  }
  uri = "http://www.ihappysoni.netlify.app"
}

resource "newrelic_synthetics_alert_condition" "foo-ping" {
  policy_id = newrelic_alert_policy.Test_terra.id

  name        = "syn_alert_ping"
  monitor_id  = newrelic_synthetics_monitor.ping-monitor.id
  runbook_url = "https://www.ihappysoni.netlify.com"
}