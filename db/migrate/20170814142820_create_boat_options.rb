class CreateBoatOptions < ActiveRecord::Migration[5.0]
  def change
    create_table :boat_options do |t|
      t.references :option, foreign_key: true
      t.references :boat, foreign_key: true
    end
  end
end
