class CreatePooBags < ActiveRecord::Migration[6.0]
  def change
    create_table :poo_bags do |t|
      t.string :brand
      t.integer :volume
      t.integer :cat_dog_id
    end
  end
end
