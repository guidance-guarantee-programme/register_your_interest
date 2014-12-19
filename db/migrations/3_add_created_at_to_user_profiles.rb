Sequel.migration do
  change do
    add_column :user_profiles, :created_at, DateTime, default: nil
  end
end
