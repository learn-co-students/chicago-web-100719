class CreateCars < ActiveRecord::Migration[5.2]
  def change
    create_table :cars do |t|
      t.string :model
      t.integer :miles, default: 0
      t.integer :fuel, default: 100
    end
  end
end
