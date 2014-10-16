class UserProfilesController < ApplicationController
  def new
    @user_profile = UserProfile.new
  end

  def create
    render nothing: true
  end
end
