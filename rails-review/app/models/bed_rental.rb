class BedRental < ActiveRecord::Base
  belongs_to :pet_bed
  belongs_to :cat_dog
end
