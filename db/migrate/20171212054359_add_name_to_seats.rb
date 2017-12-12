class AddNameToSeats < ActiveRecord::Migration[5.1]
  def change
    add_column :seats, :name, :text
  end
end
