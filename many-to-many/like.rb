class Like
  attr_reader :tweet, :user

  @@all = []

  def initialize(tweet, user)
    # Liker will be a user
    @tweet = tweet
    @user = user
    @@all << self
  end

  def self.all
    @@all
  end

end
