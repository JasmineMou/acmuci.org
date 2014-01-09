# Be sure to restart your server when you modify this file.

# Your secret key is used for verifying the integrity of signed cookies.
# If you change this key, all old signed cookies will become invalid!

# Make sure the secret is at least 30 characters and all random,
# no regular words or you'll be exposed to dictionary attacks.
# You can use `rake secret` to generate a secure secret key.

# Make sure your secret_key_base is kept private
# if you're sharing your code publicly.
Acmorg::Application.config.secret_token = ENV['SECRET_TOKEN']
Acmorg::Application.config.secret_key_base = '6d936be8b3ebbb98c56cfd73f28e408e83744e65d3d1e426085ec25205d0f9471dd82a05ef98f407028665ba4140347ca3793830aafdbb4042339ba74955438f'
