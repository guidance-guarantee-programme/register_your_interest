RSpec.describe ErrorsController, type: :controller do
  it 'is a Gaffe errors controller' do
    expect(controller).to be_a(Gaffe::Errors)
  end

  describe 'GET show' do
    before { routes.draw { get 'show_error' => 'errors#show' } }
    before { get :show }
    after { Rails.application.reload_routes! }

    it 'tells downstream servers and clients to cache the response' do
      expect(response.headers.fetch('Cache-Control')).to eq('max-age=60, public')
    end
  end
end
