RSpec.describe UserProfilesController, type: :controller do
  describe 'GET new' do
    before { get :new }

    specify { expect(response).to be_ok }

    it 'assigns a new instance of UserProfile' do
      expect(assigns(:user_profile)).to be_an_instance_of(UserProfile)
    end
  end

  describe 'POST create' do
    it 'calls the CreateUserProfile service with the posted user profile data' do
      user_profile_data = {
        'name' => 'Joe Bloggs',
        'age' => '55',
        'email' => 'joe.bloggs@example.com',
        'retirement_preference' => '6_months',
        'pension_type_defined_contribution' => true,
        'channel_preference_phone' => true,
        'channel_preference_web' => true,
        'wishlist' => 'Some reassurance and a clearer understanding of my options.',
      }
      service = instance_double(CreateUserProfile)

      allow(CreateUserProfile).to receive(:new)
        .with(UserProfileRepository)
        .and_return(service)

      expect(service).to receive(:call).with(user_profile_data)

      post :create, user_profile: user_profile_data
    end
  end
end
