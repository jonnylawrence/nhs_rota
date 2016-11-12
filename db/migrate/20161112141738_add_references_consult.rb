class AddReferencesConsult < ActiveRecord::Migration[5.0]
  def change
    remove_column :rota, :Consultant_id
    add_foreign_key :rota, :Consultant
    add_reference :rota, :Consultant
  end
end
