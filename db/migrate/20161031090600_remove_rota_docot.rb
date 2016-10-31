class RemoveRotaDocot < ActiveRecord::Migration[5.0]
  def change
        remove_column :locations,  :rota_docot
  end
end
