class RemoveColumnConsultant < ActiveRecord::Migration[5.0]
  def change
      remove_column :rota, :consultant
      add_column :rota, :Consultant_id, :integer

  end
end
