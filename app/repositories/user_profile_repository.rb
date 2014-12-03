class UserProfileRepository
  class << self
    attr_accessor :connection
  end

  def create(user_profile_data)
    user_profiles.insert(user_profile_data)
  end

  def read(options={})
    user_profiles.filter(options).first
  end

  private

  def user_profiles
    self.class.connection[:user_profiles]
  end
end
