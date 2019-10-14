require_relative 'config/environment.rb'

charlie = Bucket.new("blue", 6)
puts "TOO FAR"
pail = Bucket.new("pale", 66)
zeta = Bucket.new("turquoise", 14)
echo = Bucket.new("clear", 20)
fiesta = Bucket.new("rainbow", 8)
lol = Bucket.new("mirror", 3)
cool = Bucket.new("red", 10)

buck_solo = Bucket.new("brown", 12)

# p charlie.color

# charlie.color = "fuchsia"
boo = Candy.new("PeNny", charlie)
# p charlie.color
reeses = Candy.new("reesis peesees", charlie)

# p reeses.bucket
reeses = Candy.new("reesis peesees", pail)

# p charlie.candies


# puts "class method call:"
# p Candy.all
#
# puts "constant call"
# p Candy::ALL

# p reeses.bucket


# create a couple kids

alfie = Kid.new("alfie", 7)
bonnie = Kid.new("bonnie", 9)

# create a couple assignments linking kids to buckets

alfie.assign_bucket(charlie)
alfie.assign_bucket(pail)
bonnie.assign_bucket(charlie)
bonnie.assign_bucket(fiesta)
bonnie.assign_bucket(zeta)
bonnie.assign_bucket(lol)
bonnie.assign_bucket(cool)
bonnie.assign_bucket(echo)

# p Assignment.all
# see "charlie" bucket's associated kids

p charlie.kids

p charlie.average_assigned_kid_age

# see a kid's associated buckets

p bonnie.buckets

p bonnie.top_three_diameter_buckets

puts "*" * 199
p Bucket.biggest_bucket
