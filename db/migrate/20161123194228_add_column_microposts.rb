class AddColumnMicroposts < ActiveRecord::Migration[5.0]
  def change
    add_column :microposts, :doctor_id
    add_reference :microposts, :doctor_id
  end
end
