class AddColumnsforpreferences < ActiveRecord::Migration[5.0]
  def change
    add_column :doctors, :monday_days, :boolean
    add_column :doctors, :monday_nights, :boolean
    add_column :doctors, :tuesday_days, :boolean
    add_column :doctors, :tuesday_nights, :boolean
    add_column :doctors, :wednesday_days, :boolean
    add_column :doctors, :wednesday_nights, :boolean
    add_column :doctors, :thursday_days, :boolean
    add_column :doctors, :thursday_nights, :boolean
    add_column :doctors, :friday_days, :boolean
    add_column :doctors, :friday_nights, :boolean
    add_column :doctors, :saturday_days, :boolean
    add_column :doctors, :saturday_nights, :boolean
    add_column :doctors, :sunday_days, :boolean
    add_column :doctors, :sunday_nights, :boolean
  end
end
