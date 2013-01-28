# Be sure to restart your server when you modify this file.

# Set a default and changing SECRET_TOKEN in development
# Remove this as soon as you add any authentication using devise or a different gem
if Rails.env.development?
  ENV['SECRET_TOKEN'] = SecureRandom.hex(48)
end

# Your secret key for verifying the integrity of signed cookies.
# If you change this key, all old signed cookies will become invalid!
# Make sure the secret is at least 30 characters and all random,
# no regular words or you'll be exposed to dictionary attacks.
Prelauncher::Application.config.secret_token = ENV['SECRET_TOKEN']
