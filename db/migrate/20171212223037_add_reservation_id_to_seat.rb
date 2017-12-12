class AddReservationIdToSeat < ActiveRecord::Migration[5.1]
  def change
    add_column :seats, :reservation_id, :integer
  end
end
