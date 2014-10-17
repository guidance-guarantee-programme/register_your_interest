class UserProfileRepository
  DB = Sequel.sqlite # memory database

  DB.create_table :user_profiles do
    primary_key :id
    String :email
    String :name
    String :age
    String :retirement_preference
    String :pension_type
    Boolean :channel_preference_web
    Boolean :channel_preference_phone
    Boolean :channel_preference_face_to_face
    String :wishlist
  end

  def create(user_profile_data)
    DB[:user_profiles].insert(user_profile_data)
  end

  def read(options={})
    DB[:user_profiles].filter(options).first
  end
end
