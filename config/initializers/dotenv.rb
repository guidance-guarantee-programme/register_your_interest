require 'dotenv'

Dotenv.load(
  Rails.root.join(".env.#{Rails.env}"),
  Rails.root.join('.env')
)
