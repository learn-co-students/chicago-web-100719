class CreateSharkOceans < ActiveRecord::Migration
  def change
    create_table :shark_oceans do |t|
      t.integer :shark_id
      t.integer :ocean_id
    end
  end
end
