class AddUpdatedAtToUserProfiles < ActiveRecord::Migration
  def change
    add_column :user_profiles, :updated_at, :timestamp
  end
end
