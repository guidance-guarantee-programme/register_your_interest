Rails.application.routes.draw do
  root to: redirect(ENV.fetch('ROOT_REDIRECT', '/register'))

  constraints format: 'html' do
    get '/register', as: 'new_user_profile', to: 'user_profiles#new'
    post '/register', as: 'user_profile', to: 'user_profiles#create'
  end
end
