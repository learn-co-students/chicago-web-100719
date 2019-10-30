class RemoveOceanIdFromSharks < ActiveRecord::Migration
  def change
    remove_column :sharks, :ocean_id
  end
end
