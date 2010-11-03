# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_ucblog_session',
  :secret      => 'beefa188c97900e0ab0ef2fbe39fac0ce9f74162a3a9f03a795844452c93804fb2769e7aae62772e98b181adc8189806ff8a738e472816b9f2154a1296de24c2'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
