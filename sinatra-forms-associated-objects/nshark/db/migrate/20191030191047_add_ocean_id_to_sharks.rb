class AddOceanIdToSharks < ActiveRecord::Migration
  def change
    add_column :sharks, :ocean_id, :integer
  end
end
