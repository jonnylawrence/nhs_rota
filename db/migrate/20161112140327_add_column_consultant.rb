class AddColumnConsultant < ActiveRecord::Migration[5.0]
  def change
      add_column :rota, :consultant, :string
  end
end
