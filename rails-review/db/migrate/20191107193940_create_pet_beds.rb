class CreatePetBeds < ActiveRecord::Migration[6.0]
  def change
    create_table :pet_beds do |t|
      t.string :size
      t.string :condition
    end
  end
end
