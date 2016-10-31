class CreateRota < ActiveRecord::Migration[5.0]

def change

    create_table :rota do |t|
      t.date :Date
      t.text :First_on_call_day
      t.text :First_on_call_nights
      t.text :Second_on_call

      t.timestamps
    end
end

end
