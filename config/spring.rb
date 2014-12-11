Spring.after_fork do
  UserProfileRepository.connection = Sequel.connect(ENV['DATABASE_URL'])
end
