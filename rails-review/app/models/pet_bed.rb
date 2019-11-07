class PetBed < ActiveRecord::Base
  has_many :bed_rentals
  has_many :cat_dogs, through: :bed_rentals

  def description
    "#{size.capitalize} #{condition.capitalize}"
  end
end
