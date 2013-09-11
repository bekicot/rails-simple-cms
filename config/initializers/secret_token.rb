# Be sure to restart your server when you modify this file.

# Your secret key is used for verifying the integrity of signed cookies.
# If you change this key, all old signed cookies will become invalid!

# Make sure the secret is at least 30 characters and all random,
# no regular words or you'll be exposed to dictionary attacks.
# You can use `rake secret` to generate a secure secret key.

# Make sure your secret_key_base is kept private
# if you're sharing your code publicly.
Cms::Application.config.secret_key_base = '3b1a7afb7e76384182d14b23297cd86a00787d196445c47ea9885ea948d070eac14b33773f8af78aeecce7a59ff247149621d96501c2db1e61d70bc31bbc0eef'
