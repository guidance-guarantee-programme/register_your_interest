source 'https://rubygems.org'

ruby '2.2.1'

gem 'bugsnag'
gem 'gaffe'
gem 'govuk_frontend_toolkit'
gem 'govuk_template'
gem 'newrelic_rpm'
gem 'pg'
gem 'rack-canonical-host'
gem 'rack-contrib'
gem 'rack-timeout'
gem 'rails', '4.2.0'
gem 'sass-rails', '~> 4.0'
gem 'uglifier', '>= 1.3.0'
gem 'unicorn'
gem 'utf8-cleaner'

group :test do
  gem 'cucumber-rails', require: false
  gem 'database_cleaner'
  gem 'site_prism'
  gem 'timecop'
end

group :production do
  gem 'dalli'
  gem 'foreman'
  gem 'rack-cache'
  gem 'rails_12factor'
end

group :development, :test do
  gem 'pry-rails'
  gem 'rspec-rails', '~> 3.0'
end
