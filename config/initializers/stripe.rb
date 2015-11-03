Rails.configuration.stripe = {
   publishable_key: ENV['pk_live_xPCL7oAuddG2utt65iAtHT2Q'],
   secret_key: ENV['sk_live_ce2RxCiESlUcZl4BZmJXteKF']
 }
 
 # Set our app-stored secret key with Stripe
 Stripe.api_key = Rails.configuration.stripe[:secret_key]