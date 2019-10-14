# puts "LOADING USER CLASS"

class User
  attr_accessor :handle
  attr_reader :username

  def username=(new_username)
    @username = new_username.upcase
  end

  def initialize(username, handle="")
    @username = username.upcase
    @handle = handle
  end

  def tweets
    Tweet.all.select do |tweet|
      tweet.user.username == self.username
    end
  end

  def post_tweet(content)
    Tweet.new(content, self)
  end

  def like_tweet(tweet)
    Like.new(tweet, self)
  end

  def likes
    # returns all likes associated with this user
    Like.all.filter do |like|
      like.user.username == self.username
    end
  end

  def liked_tweets
    # returns all tweets liked by this user
    # HINT: It's ok to reuse methods we just wrote as part of the process!
    self.likes.map do |like|
      like.tweet
    end
  end
end
