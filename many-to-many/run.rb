require_relative 'user'
require_relative 'tweet'
require_relative 'like'

matcha_mom = User.new("matcha_mom")
dad_jr = User.new("coffee_dad_jr")

tweet_by_mm = Tweet.new("hello world, sippin on sunshine", matcha_mom)
Tweet.new("dad loves # coffee but not dad jr", dad_jr)

# p Tweet.all

# p matcha_mom.tweets

matcha_mom.post_tweet("this day puts the mmmmmm in mmmmmatcha!")

# p matcha_mom.tweets

dad_jr.like_tweet(tweet_by_mm)
matcha_mom.like_tweet(tweet_by_mm)


# p Like.all
# p dad_jr.liked_tweets

p tweet_by_mm.likers
