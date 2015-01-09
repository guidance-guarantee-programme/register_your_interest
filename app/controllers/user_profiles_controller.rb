class UserProfilesController < ApplicationController

  rescue_from ActionController::ParameterMissing, with: ->{ redirect_to new_user_profile_path }, only: :create

  def new
    @user_profile = UserProfile.new
    @user_profile_regions = [
      ['North East', :north_east],
      ['North West', :north_west],
      ['Yorkshire and the Humber', :yorkshire_and_the_humber],
      ['East Midlands', :east_midlands],
      ['West Midlands', :west_midlands],
      ['East of England', :east_of_england],
      ['London', :london],
      ['South East', :south_east],
      ['South West', :south_west],
      ['Wales', :wales],
      ['Scotland', :scotland],
      ['Northern Ireland', :northern_ireland]
    ]

    expires_in(10.minutes, public: true)
  end

  def create
    UserProfile.create(user_profile_params)

    render :confirmation
  end

private

  def user_profile_params
    params
      .require(:user_profile)
      .permit(:email, :name, :age, :region, :retirement_preference, :pension_type, :channel_preference_web,
              :channel_preference_phone, :channel_preference_face_to_face, :wishlist)
  end

end
