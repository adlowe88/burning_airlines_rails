class AddSeatIdToReservation < ActiveRecord::Migration[5.1]
  def change
    add_column :reservations, :seat_id, :integer
  end
end
