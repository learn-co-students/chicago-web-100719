class CreateHands < ActiveRecord::Migration[5.2]
  def change
    create_table :hands do |t|
      t.string :title
      t.string :aka
      t.timestamps
    end
  end
end
