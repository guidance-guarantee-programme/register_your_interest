Rails.application.routes.draw do
  resource :user_profile, only: %i(new create), path: 'profile', path_names: { new: 'register' }
end
