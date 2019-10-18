class CardPlacement < ActiveRecord::Base
  belongs_to :card
  belongs_to :hand
end
