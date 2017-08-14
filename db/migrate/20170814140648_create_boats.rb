class CreateBoats < ActiveRecord::Migration[5.0]
  def change
    create_table :boats do |t|
      t.string :name
      t.references :user, foreign_key: true
      
      t.text :description
      t.string :address
      t.integer :capacity
      t.float :price
      t.integer :caution
      t.float :size
      t.integer :horse_power

      t.timestamps
    end
  end
end
