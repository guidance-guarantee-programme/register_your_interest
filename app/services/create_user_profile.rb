class CreateUserProfile
  attr_accessor :repository
  private :repository

  def initialize(repository)
    self.repository = repository
  end

  def call(user_profile_data)
    repository.create(user_profile_data)
  end
end
