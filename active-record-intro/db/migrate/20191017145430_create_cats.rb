class CreateCats < ActiveRecord::Migration[6.0]
  def change
    create_table :cats do |t|
      t.string :nom
      t.integer :age

      # shorthand for t.datetime :created_at & t.datetime :updated_at
      t.timestamps
    end
  end
end
