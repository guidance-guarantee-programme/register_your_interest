source 'https://rubygems.org'

ruby '2.1.5'

gem 'bugsnag'
gem 'gaffe'
gem 'govuk_frontend_toolkit'
gem 'govuk_template'
gem 'newrelic_rpm'
gem 'pg'
gem 'rack-timeout'
gem 'rails', '4.1.8'
gem 'retriable'
gem 'sass-rails', '~> 4.0.3'
gem 'sequel', '~> 4.0'
gem 'uglifier', '>= 1.3.0'
gem 'unicorn'

group :development do
  gem 'spring'
  gem 'spring-commands-cucumber'
  gem 'spring-commands-rspec'
end

group :test do
  gem 'cucumber-rails', require: false
  gem 'rspec-rails', '~> 3.0.0'
  gem 'site_prism'
end

group :production do
  gem 'foreman'
  gem 'rails_12factor'
end

group :development, :test do
  gem 'pry-rails'
  gem 'dotenv-rails'
end
