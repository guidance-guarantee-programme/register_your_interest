RSpec.describe UserProfilesController, type: :controller do
  describe 'GET new' do
    before { get :new }

    specify { expect(response).to be_ok }

    it 'assigns a new instance of UserProfile' do
      expect(assigns(:user_profile)).to be_an_instance_of(UserProfile)
    end
  end
end
