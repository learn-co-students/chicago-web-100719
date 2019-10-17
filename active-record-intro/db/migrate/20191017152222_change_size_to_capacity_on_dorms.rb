class ChangeSizeToCapacityOnDorms < ActiveRecord::Migration[6.0]
  def change
    rename_column :dorms, :size, :capacity
  end
end
