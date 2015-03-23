Rails.application.routes.draw do
  if ENV['CATCH_ALL_REDIRECT']
    match '*path', to: redirect(ENV['CATCH_ALL_REDIRECT']), via: :all
  end

  root to: redirect(ENV.fetch('ROOT_REDIRECT', '/register'))

  constraints format: 'html' do
    get '/register', as: 'new_user_profile', to: 'user_profiles#new'
    post '/register', as: 'user_profile', to: 'user_profiles#create'
  end
end
