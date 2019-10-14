require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

# your seed data goes here

charlie = Bucket.new("blue", 6)

reeses = Candy.new("reesis peesees", charlie)

puts "class method call:"
p Candy.all

puts "constant call"
p Candy::ALL

Pry.start
