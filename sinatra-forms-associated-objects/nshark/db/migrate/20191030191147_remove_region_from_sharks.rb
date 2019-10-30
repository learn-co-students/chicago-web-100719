class RemoveRegionFromSharks < ActiveRecord::Migration
  def change
    remove_column :sharks, :region
  end
end
