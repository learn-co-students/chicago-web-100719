class CreateWatermelons < ActiveRecord::Migration[6.0]
  def change
    create_table :watermelons do |t|
      t.integer :seedcount
      t.string :shape
      t.integer :weight
      t.string :nickname
      t.timestamps
    end
  end
end
