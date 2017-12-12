class CreateAirplanes < ActiveRecord::Migration[5.1]
  def change
    create_table :airplanes do |t|
      t.text :name
      t.integer :rows
      t.integer :columns 
      t.timestamps
    end
  end
end