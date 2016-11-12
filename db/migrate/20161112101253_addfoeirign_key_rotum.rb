class AddfoeirignKeyRotum < ActiveRecord::Migration[5.0]
  def change
    add_foreign_key :rota, :First_on_call_nights
    add_foreign_key :rota, :Second_on_call
    add_foreign_key :rota, :First_on_call_day
  end
end
