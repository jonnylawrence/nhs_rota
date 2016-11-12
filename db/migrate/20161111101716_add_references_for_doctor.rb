class AddReferencesForDoctor < ActiveRecord::Migration[5.0]
  def change
    	add_reference :rota, :First_on_call_nights
      add_reference :rota, :Second_on_call
      add_reference :rota, :First_on_call_day
  end
end
