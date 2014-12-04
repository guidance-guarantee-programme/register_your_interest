UserProfileRepository.connection = Sequel.connect(ENV['DATABASE_URL']) if ENV['DATABASE_URL']
