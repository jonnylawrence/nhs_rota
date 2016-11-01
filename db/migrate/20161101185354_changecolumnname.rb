class Changecolumnname < ActiveRecord::Migration[5.0]
  def change
    rename_column :rota, :locations_id, :location_id
  end
end
