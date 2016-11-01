class Addeferencetorota < ActiveRecord::Migration[5.0]
  def change
	add_reference :rota, :locations, index: true
  end
end
