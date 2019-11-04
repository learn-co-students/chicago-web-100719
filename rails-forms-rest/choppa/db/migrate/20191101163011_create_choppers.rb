class CreateChoppers < ActiveRecord::Migration[6.0]
  def change
    create_table :choppers do |t|
      t.string :name
      t.integer :serial_num
      t.integer :seating_capacity

      t.timestamps
    end
  end
end
