class Candy
  # ALL = []
  @@all = []

  attr_reader :name, :bucket

  def initialize(name, bucket)
    # raise(ArgumentError, "please, no pennies, my children are hungry not broke") if name.downcase == "penny"
    @name = name
    @bucket = bucket
    # self.class::ALL << self
    self.class.all << self
  end

  def self.all
    # p "running class method"
    @@all
  end

end
