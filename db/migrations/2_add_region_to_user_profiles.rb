Sequel.migration do
  change do
    add_column :user_profiles, :region, String
  end
end
