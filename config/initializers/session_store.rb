# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_demo_shop_session',
  :secret      => 'e4737eb076e84cb9a001a6ceb1f24645bc0a9d66bb790cbe3d1c46b6d1a6aae8065764510483a03116d58c4b2e006743dab64aacd039678f338d258fce958b11'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
