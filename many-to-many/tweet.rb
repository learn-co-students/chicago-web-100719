class Tweet
  attr_reader :user, :content

  @@all = []

  def initialize(content, user)
    @content = content
    @user = user
    @@all << self
  end

  def self.all
    @@all
  end

  def my_likes
    Like.all.select do |like|
      like.tweet.content == self.content
    end
  end

  def likers
    self.my_likes.map do |like|
      like.user
    end
  end
end
