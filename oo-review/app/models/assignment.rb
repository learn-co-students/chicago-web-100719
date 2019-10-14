class Assignment
  @@all = []
  attr_reader :bucket, :kid

  def initialize(bucket, kid)
    @bucket = bucket
    @kid = kid
    self.class.all << self
  end

  def self.all
    @@all
  end
end
