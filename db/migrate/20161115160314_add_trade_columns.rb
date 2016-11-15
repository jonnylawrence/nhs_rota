class AddTradeColumns < ActiveRecord::Migration[5.0]
  def up
      add_column :rota, :First_on_call_nights_trade, :boolean
      add_column :rota, :First_on_call_day_trade, :boolean
      add_column :rota, :Second_on_call_trade, :boolean
      add_column :rota, :Consultant_trade, :boolean
  end
  def down
    remove_column :rota, :First_on_call_nights_trade
    remove_column :rota, :First_on_call_day_trade
    remove_column :rota, :Second_on_call_trade
    remove_column :rota, :Consultant_trade
  end

end
