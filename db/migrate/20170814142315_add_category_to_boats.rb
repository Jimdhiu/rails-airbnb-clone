class AddCategoryToBoats < ActiveRecord::Migration[5.0]
  def change
    add_reference :boats, :category, foreign_key: true
  end
end
