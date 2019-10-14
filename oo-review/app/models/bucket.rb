class Bucket
  p "IN THE CLASS"
  attr_reader :diameter
  attr_accessor :color

  def initialize(color, diameter)
    @color = color
    @diameter = diameter
  end

  # access all the candy from Candy class
  # iterate over Candy pieces
    # if the candy has a bucket that equals ME, keep it!

  def candies
    # all_candies = Candy.all
    Candy.all.select do |candy|
      candy.bucket == self && candy.name.downcase != "penny"
    end

    # my_candies.reject do |candy|
    #   candy.name.downcase == "penny"
    # end
  end
end
