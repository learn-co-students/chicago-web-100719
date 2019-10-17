class CreateDorms < ActiveRecord::Migration[6.0]
  def change
    create_table :dorms do |t|
      t.string :title
      t.integer :size

      t.timestamps
    end
  end
end
