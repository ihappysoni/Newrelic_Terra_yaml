resource "newrelic_alert_policy" "Test_terra" {
  name = "hs-test-ass"
}

resource "newrelic_nrql_alert_condition" "test_alert" {
  account_id                     = "3660048"
  policy_id                      = newrelic_alert_policy.Test_terra.id
  type                           = "static"
  name                           = "HS-Syn-Alert"
  description                    = "Alert"
  runbook_url                    = "https://www.gmail.com"
  enabled                        = true
  violation_time_limit_seconds   = 3600
  fill_option                    = "static"
  fill_value                     = 1.0
  aggregation_window             = 60
  aggregation_method             = "event_flow"
  aggregation_delay              = 120
  expiration_duration            = 120
  open_violation_on_expiration   = true
  close_violations_on_expiration = true
  slide_by                       = 30

  nrql {
    query = "SELECT percentage(count(*), WHERE result = 'SUCCESS') FROM SyntheticCheck WHERE monitorName = 'Step_Monitor_Portfolio'"
  }
  critical {
    operator              = "above"
    threshold             = 3.5
    threshold_duration    = 120
    threshold_occurrences = "ALL"
  }

  warning {
    operator              = "above"
    threshold             = 4
    threshold_duration    = 120
    threshold_occurrences = "ALL"
  }

}

# resource "newrelic_alert_channel" "email1" {
#   name = "outlook"
#   type = "email"

#   config {
#     recipients              = "ihappysoni@outlook.com"
#     include_json_attachment = 1
#   }
# }
# resource "newrelic_alert_channel" "email2" {
#   name = "gmail"
#   type = "email"

#   config {
#     recipients              = "happy.soni944@gmail.com"
#     include_json_attachment = 1
#   }
# }
# # resource "newrelic_alert_policy_channel" "foo" {
#   policy_id  = newrelic_alert_policy.Test_terra.id
#   channel_ids = [
#     newrelic_alert_channel.email1.id,
#     newrelic_alert_channel.email2.id
#   ]
# }
# resource "newrelic_notification_channel" "foo" {
#   account_id = 3660048
#   name = "email-example"
#   type = "EMAIL"
#   destination_id = newrelic_notification_destination.emails.id
#   product = "IINT"

#   property {
#     key = "Notification"
#     value = "Synthetic Notification"
#   }
# }
# resource "newrelic_notification_destination" "emails" {
#   account_id = 3660048
#   name = "outlook/gmail"
#   type = "EMAIL"

#   property {
#     key = "email"
#     value = "ihappysoni@outlook.com,happy.soni944@gmail.com"
#   }
# }