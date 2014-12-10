class UserProfilesController < ApplicationController

  rescue_from ActionController::ParameterMissing, with: ->{ redirect_to new_user_profile_path }, only: :create

  def new
    @user_profile = UserProfile.new
    expires_in(10.minutes, public: true)
  end

  def create
    service = CreateUserProfile.new(UserProfileRepository.new)
    service.call(user_profile_params)

    render :confirmation
  end

private

  def user_profile_params
    params
      .require(:user_profile)
      .permit(:email, :name, :age, :retirement_preference, :pension_type, :channel_preference_web,
              :channel_preference_phone, :channel_preference_face_to_face, :wishlist)
  end

end
