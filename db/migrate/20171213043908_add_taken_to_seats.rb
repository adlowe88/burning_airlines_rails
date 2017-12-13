class AddTakenToSeats < ActiveRecord::Migration[5.1]
  def change
    add_column :seats, :taken, :boolean, :default => false
  end
end
