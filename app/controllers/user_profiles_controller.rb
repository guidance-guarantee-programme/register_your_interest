class UserProfilesController < ApplicationController
  def new
    @user_profile = UserProfile.new
  end

  def create
    service = CreateUserProfile.new(UserProfileRepository.new)
    service.call(params[:user_profile])

    render :confirmation
  end
end
