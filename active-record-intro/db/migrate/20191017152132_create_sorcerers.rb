class CreateSorcerers < ActiveRecord::Migration[6.0]
  def change
    create_table :sorcerers do |t|
      t.string :name
      t.string :alignment
      t.integer :dorm_id

      t.timestamps
    end
  end
end
