class Bucket

  @@all = []
  # p "IN THE CLASS"
  attr_reader :diameter
  attr_accessor :color, :condition

  def initialize(color, diameter, condition="perfect")
    @color = color
    @diameter = diameter
    @condition = condition
    puts "Right now self is #{self}"
    puts "Right now self.class is #{self.class}"
    self.class.all << self
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

  def assignments
    # start with assignments
    # look through and filter only assignments related to this bucket
    Assignment.all.select do |assignment|
      assignment.bucket == self
    end
  end

  def kids
    # once we have those assignments, iterate through and collect only the kid that is assocated with each one
    assignments.collect do |assignment|
      assignment.kid
    end
  end

  def average_assigned_kid_age
    ages = self.kids.map do |kid|
      kid.age
    end

    # sum all ages, divide by length
    ages.sum / ages.length
  end

  def self.biggest_bucket
    self.all.max do |a, b|
      a.diameter <=> b.diameter
    end
  end

  def self.all
    @@all
  end
end
