# If I run this multiple times, I don't want to end up with multiple copies
Hand.destroy_all
Card.destroy_all

# Create suits and ranks for cards
suits = ["spades", "clubs", "hearts", "diamonds"]
ranks = ["2", "3", "4", "5", "6", "7", "8", "9", "10", "jack", "queen", "king", "ace"]

# For each rank/suit combo, build a card and save it to the DB
suits.each do |suit|
  ranks.each do |rank|
    new_card = Card.new(suit: suit, rank: rank)
    new_card.save
  end
end


# Test that cards were saved to the database as expected
ten_spades = Card.find_by(suit: "spades", rank: "10")
p ten_spades.full_name

# Look up the rest of the cards I want in my hand
jack_spades = Card.find_by(suit: "spades", rank: "jack")
queen_spades = Card.find_by(suit: "spades", rank: "queen")
king_spades = Card.find_by(suit: "spades", rank: "king")
ace_spades = Card.find_by(suit: "spades", rank: "ace")

# Create a hand that will contain the cards I need
royal_flush = Hand.new(title: "royal flush", aka: "royale with flush")

# Use the method provided by "has_many" to associate cards with their hand
royal_flush.cards << ten_spades
royal_flush.cards << jack_spades
royal_flush.cards << queen_spades
royal_flush.cards << king_spades
royal_flush.cards << ace_spades

# Verify the association works
puts royal_flush.all_card_names
