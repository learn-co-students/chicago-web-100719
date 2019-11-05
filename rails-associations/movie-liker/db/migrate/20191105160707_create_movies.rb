class CreateMovies < ActiveRecord::Migration[6.0]
  def change
    create_table :movies do |t|
      t.string :title
      t.string :genre
      t.integer :length
      t.integer :year

      t.timestamps
    end
  end
end
