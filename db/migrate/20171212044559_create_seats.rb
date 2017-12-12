class CreateSeats < ActiveRecord::Migration[5.1]
  def change
    create_table :seats do |t|
      t.integer :flight_id
      t.integer :user_id
      t.timestamps
    end
  end
end
