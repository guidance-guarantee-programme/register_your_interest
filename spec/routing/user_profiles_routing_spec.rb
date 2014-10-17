RSpec.describe 'Routes for Registrations', type: :routing do
  it 'routes GET /profile/register to user_profiles#new' do
    expect(get: '/profile/register').
      to route_to(controller: 'user_profiles', action: 'new')
  end

  it 'routes POST /profile to user_profiles#create' do
    expect(post: '/profile').
      to route_to(controller: 'user_profiles', action: 'create')
  end
end
