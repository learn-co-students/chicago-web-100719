# puts "LOADING USER CLASS"

class User
  attr_reader :username

  def initialize(username)
    @username = username
  end

  def tweets
    Tweet.all.select do |tweet|
      tweet.user.username == self.username
    end
  end

  def post_tweet(content)
    Tweet.new(content, self)
  end
end
