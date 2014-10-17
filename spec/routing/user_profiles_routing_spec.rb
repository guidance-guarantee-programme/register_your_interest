RSpec.describe 'Routes for Registrations', type: :routing do
  it 'routes GET / to user_profiles#new' do
    expect(get: '/').
      to route_to(controller: 'user_profiles', action: 'new')
  end

  it 'routes POST / to user_profiles#create' do
    expect(post: '/').
      to route_to(controller: 'user_profiles', action: 'create')
  end
end
