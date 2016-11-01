class Addforeignkey < ActiveRecord::Migration[5.0]
  def change
add_foreign_key :rota, :locations
  end
end
