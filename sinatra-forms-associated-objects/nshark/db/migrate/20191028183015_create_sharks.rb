class CreateSharks < ActiveRecord::Migration
  def change
    create_table :sharks do |t|
      t.string :name
      t.string :species
      t.integer :length
      t.string :region
    end
  end
end
