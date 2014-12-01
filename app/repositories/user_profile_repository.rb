class UserProfileRepository
  DB = Sequel.connect(ENV['DATABASE_URL'])

  def create(user_profile_data)
    DB[:user_profiles].insert(user_profile_data)
  end

  def read(options={})
    DB[:user_profiles].filter(options).first
  end
end
