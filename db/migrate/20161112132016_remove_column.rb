class RemoveColumn < ActiveRecord::Migration[5.0]
  def change
    remove_column :rota, :First_on_call_day
    remove_column :rota, :Second_on_call
    remove_column :rota, :First_on_call_nights
  
  end
end
