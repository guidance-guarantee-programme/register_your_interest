require 'spec_helper'

RSpec.describe 'Accepted format', type: :request do
  context 'requesting a resource with no specified format' do
    it 'returns a 200 response status' do
      get '/register'

      expect(response.status).to eq(200)
    end
  end

  context 'requesting a HTML formatted resource' do
    it 'returns a 200 response status' do
      get '/register.html'

      expect(response.status).to eq(200)
    end
  end

  context 'requesting a ZIP formatted resource' do
    it 'raises a routing error' do
      expect { get '/register.zip' }.to raise_error(ActionController::RoutingError)
    end
  end
end
