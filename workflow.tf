# resource "newrelic_workflow" "foo" {
#   name = "synthetic_workflow"
#   account_id = 3660048
#   enrichments_enabled = true
#   destinations_enabled = true
#   enabled = true
#   muting_rules_handling = "NOTIFY_ALL_ISSUES"
#   # enrichments {
#   #   nrql {
#   #     name = "Log"
#   #     configuration {
#   #       query = "SELECT count(*) FROM Log WHERE message like '%error%' since 10 minutes ago"
#   #     }
#   #   }
#   # }

#   issues_filter {
#     name = "filter-name"
#     type = "FILTER"

#     predicate {
#       attribute = "accumulations.sources"
#       operator = "EXACTLY_MATCHES"
#       values = [ "newrelic" ]
#     }
#     predicate {

#       attribute = "accumulations.policyName"

#       operator = "EXACTLY_MATCHES"

#       values = ["hs-test-ass"]

#     }
#   }
   
#   destination {
#     channel_id = newrelic_notification_channel.foo.id
#   }
#   #  destination {
#   #   channel_id = newrelic_notification_destination.emails
#   # }
# }




















# resource "newrelic_workflow" "workflow-example" {

#   name = "workflow-example"

#   account_id = 3660048

#   muting_rules_handling = "NOTIFY_ALL_ISSUES"



#   issues_filter {

#     name = "Filter-name"

#     type = "FILTER"



#     predicate {

#       attribute = "accumulations.policyName"

#       operator = "EXACTLY_MATCHES"

#       values = ["hs-test-ass"]

#     }



#     predicate {

#       attribute = "accumulations.sources"

#       operator = "EXACTLY_MATCHES"

#       values = ["newrelic"]

#     }
#   }
#   destination {
#     channel_id = newrelic_notification_channel.email-channel.id
#   }

# }