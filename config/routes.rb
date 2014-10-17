Rails.application.routes.draw do
  root to: 'user_profiles#new'
  get '/', as: 'new_user_profile', to: 'user_profiles#new'
  post '/', as: 'user_profile', to: 'user_profiles#create'
end
