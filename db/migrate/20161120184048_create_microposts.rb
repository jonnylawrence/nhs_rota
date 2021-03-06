class CreateMicroposts < ActiveRecord::Migration[5.0]
  def change
    create_table :microposts do |t|
      t.text :content
      t.references :rotum, foreign_key: true

      t.timestamps
    end
    add_index :microposts, [:rota_id, :created_at]
  end
end
