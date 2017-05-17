Rails.configuration.stripe = {
  :publishable_key => "pk_test_GQ49k8DTGK2vhvnCoMkqhBkm",
  :secret_key      => "sk_test_SCKSuXfWjlpZ4sm46eP0zQHF"
}

Stripe.api_key = Rails.configuration.stripe[:secret_key]	