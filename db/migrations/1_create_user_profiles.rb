Sequel.migration do
  change do
    create_table(:user_profiles) do
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
  end
end
