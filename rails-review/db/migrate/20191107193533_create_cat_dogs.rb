class CreateCatDogs < ActiveRecord::Migration[6.0]
  def change
    create_table :cat_dogs do |t|
      t.string :name
      t.integer :age
    end
  end
end
