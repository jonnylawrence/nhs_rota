class AddNewDoctorFieldsPref < ActiveRecord::Migration[5.0]
  def up
        add_column :doctors, :contact_preference, :string
        add_column :doctors, :notification_group, :string
    end
    def down
      remove_column :doctors, :contact_preference, :string
      remove_column :doctors, :notification_group, :string
    end
end
