class Hand < ActiveRecord::Base
  has_many :card_placements
  has_many :cards, through: :card_placements

  def all_card_names
    cards.map { |card| card.full_name }
  end
end
