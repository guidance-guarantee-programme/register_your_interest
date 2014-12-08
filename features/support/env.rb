require 'cucumber/rails'

ActionController::Base.allow_rescue = false

UserProfileRepository.connection = Sequel.connect(ENV['DATABASE_URL'])
