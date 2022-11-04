terraform {
  
  required_providers {
    newrelic = {
        source = "newrelic/newrelic"
        version = "3.2.1"
    }
  }
}

provider "newrelic" {
  # account_id = 3660048  # Your New Relic accNRAK-KAA0NS59T13Eount ID
  # api_key = "NRAK-FQQ0TCAMOE76P7WCM6CUGR6BQ39" # Your New Relic user key
  region  = "US"        # US or EU (defaults to US)
}