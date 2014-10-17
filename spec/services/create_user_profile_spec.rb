RSpec.describe CreateUserProfile do
  describe '#call' do
    it 'creates a user profile with the repo' do
      user_profile_data = { foo: 'bar' }
      repo = instance_double(UserProfileRepository)

      expect(repo).to receive(:create).with(user_profile_data)

      service = CreateUserProfile.new(repo)
      service.call(user_profile_data)
    end
  end
end
