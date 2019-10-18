class Card < ActiveRecord::Base
  belongs_to :hand

  def full_name
    "#{rank.capitalize} of #{suit.capitalize}"
  end
end
