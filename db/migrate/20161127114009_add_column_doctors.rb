class AddColumnDoctors < ActiveRecord::Migration[5.0]
  def change
    add_column :doctors, :admin, :boolean
  end
end
