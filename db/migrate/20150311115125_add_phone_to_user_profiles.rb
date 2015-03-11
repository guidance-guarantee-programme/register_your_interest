class AddPhoneToUserProfiles < ActiveRecord::Migration
  def change
    add_column :user_profiles, :phone, :text
  end
end
