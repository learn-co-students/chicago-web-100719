class CreateCardPlacements < ActiveRecord::Migration[5.2]
  def change
    create_table :card_placements do |t|
      t.integer :card_id
      t.integer :hand_id
    end
  end
end
