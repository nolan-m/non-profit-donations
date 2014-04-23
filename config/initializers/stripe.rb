Rails.configuration.stripe = {
  :publishable_key => ENV['publish_stripe_key'],
  :secret_key      => ENV['secret_stripe_key']
}

Stripe.api_key = Rails.configuration.stripe[:secret_key]
