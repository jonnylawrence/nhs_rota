class CreateJoinTable < ActiveRecord::Migration[5.0]
  def change
    create_join_table :rota, :doctors do |t|
       t.index [:rotum_id, :doctor_id]
       t.index [:doctor_id, :rotum_id]
    end
  end
end
