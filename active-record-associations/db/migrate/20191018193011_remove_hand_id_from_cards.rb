class RemoveHandIdFromCards < ActiveRecord::Migration[5.2]
  def up
    remove_column :cards, :hand_id
  end

  def down
    add_column :cards, :hand_id, :integer
  end
end
