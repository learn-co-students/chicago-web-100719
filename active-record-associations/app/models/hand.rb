class Hand < ActiveRecord::Base
  has_many :cards

  def all_card_names
    cards.map { |card| card.full_name }
  end
end
