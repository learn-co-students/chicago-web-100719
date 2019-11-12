class CreateDeepThoughts < ActiveRecord::Migration[5.2]
  def change
    create_table :deep_thoughts do |t|
      t.string :title
      t.string :body
      t.integer :user_id

      t.timestamps
    end
  end
end
