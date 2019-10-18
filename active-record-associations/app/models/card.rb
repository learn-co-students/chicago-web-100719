class Card < ActiveRecord::Base
  has_many :card_placements
  has_many :played_in_hands, through: :card_placements, source: :hand

  def full_name
    "#{rank.capitalize} of #{suit.capitalize}"
  end
end
