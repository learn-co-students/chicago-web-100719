class Kid
  attr_reader :name, :age

  @@all = []

  def initialize(name, age)
    @name = name
    @age = age
    self.class.all << self
  end

  def self.all
    @@all
  end

  def assign_bucket(bucket)
    Assignment.new(bucket, self)
  end

  def assignments
    # start with assignments
    # look through and filter only assignments related to this kid
    Assignment.all.select do |assignment|
      assignment.kid == self
    end
  end

  def buckets
    # once we have those assignments, iterate through and collect only the bucket that is assocated with each one
    assignments.collect do |assignment|
      assignment.bucket
    end
  end

  def top_three_diameter_buckets
    buckets.max(3) do |bucket, other_bucket|
      bucket.diameter <=> other_bucket.diameter
    end

    # return only my three biggest buckets, ordered by diameter

    # # Order my buckets based on the diameter of bucket
    # # make sure order goes highest to lowest
    # buckets_by_diameter = buckets.sort do |bucket, other_bucket|
    #   # p other_bucket.diameter
    #   other_bucket.diameter <=> bucket.diameter
    # end
    #
    # # once the array is ordered, return only the first three items
    # buckets_by_diameter[0..2]
  end
end
