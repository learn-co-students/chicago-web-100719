require_relative 'config/environment.rb'

charlie = Bucket.new("blue", 6)
pail = Bucket.new("pail horse", 66)

# p charlie.color

# charlie.color = "fuchsia"
boo = Candy.new("PeNny", charlie)
# p charlie.color
reeses = Candy.new("reesis peesees", charlie)

p reeses.bucket
reeses = Candy.new("reesis peesees", pail)

p charlie.candies


# puts "class method call:"
# p Candy.all
#
# puts "constant call"
# p Candy::ALL

# p reeses.bucket
