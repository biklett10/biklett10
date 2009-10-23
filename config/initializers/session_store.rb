# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_tt10_session',
  :secret      => 'ac2d74f2770c0e7ad590c051d2e4f679def169932752ed510dd234b7c78a0bc918b1d45cdcefd884f3fc75adbdf718cde858d3a18345500e64b6a7f9448f95a4'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
