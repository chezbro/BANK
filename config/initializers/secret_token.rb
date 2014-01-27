# Be sure to restart your server when you modify this file.

# Your secret key is used for verifying the integrity of signed cookies.
# If you change this key, all old signed cookies will become invalid!

# Make sure the secret is at least 30 characters and all random,
# no regular words or you'll be exposed to dictionary attacks.
# You can use `rake secret` to generate a secure secret key.

# Make sure your secret_key_base is kept private
# if you're sharing your code publicly.
Bank::Application.config.secret_key_base = '48f84fc47ef18964afab7f7ef0f597e07524191e43d0f360ca2983d8ebc90c8d6f5f1fc3356e1959d1166de25537f4856431377f00065e6f31cc79aeb1692aa8'
