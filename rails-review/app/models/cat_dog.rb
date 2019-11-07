class CatDog < ActiveRecord::Base
  has_many :poo_bags
  has_many :bed_rentals
  has_many :rented_beds, through: :bed_rentals, source: :pet_bed
end
