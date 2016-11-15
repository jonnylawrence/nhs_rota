class AddNewDoctorFields < ActiveRecord::Migration[5.0]
  def up
      add_column :doctors, :mobile, :string
  end
  def down
    remove_column :doctors, :mobile, :string
  end
end
