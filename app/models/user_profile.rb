class UserProfile
  extend ActiveModel::Naming
  include ActiveModel::Conversion

  attr_accessor :email, :name, :age, :region, :retirement_preference, :pension_type,
                :channel_preference_web, :channel_preference_phone, :channel_preference_face_to_face,
                :wishlist

  def persisted?
    false
  end
end
