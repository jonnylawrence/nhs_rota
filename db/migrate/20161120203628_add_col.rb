class AddCol < ActiveRecord::Migration[5.0]
  def change
      add_column :doctors, :consultant, :boolean
  end
end
