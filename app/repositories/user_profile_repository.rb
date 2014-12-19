class UserProfileRepository
  class << self
    attr_accessor :connection
  end

  def create(user_profile_data)
    if user_profiles.columns.include?(:created_at)
      user_profile_data = user_profile_data.merge(created_at: Time.now)
    end
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
