Rails.configuration.stripe = {
  :publishable_key => ENV["STRIPE_TEST_PUBLISHABLE_KEY"],
  :secret_key => 'sk_test_r3Lp0RWoZCm5mm07bB9cp53u00y8RSY69I'
}

Stripe.api_key = Rails.configuration.stripe[:secret_key]