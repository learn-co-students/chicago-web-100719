class CreateBedRentals < ActiveRecord::Migration[6.0]
  def change
    create_table :bed_rentals do |t|
      t.integer :pet_bed_id
      t.integer :cat_dog_id
    end
  end
end
