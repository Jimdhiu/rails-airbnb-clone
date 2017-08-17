class AddDatesToBookings < ActiveRecord::Migration[5.0]
  def change
    add_column :bookings, :start_day, :datetime
    add_column :bookings, :end_day, :datetime
  end
end
