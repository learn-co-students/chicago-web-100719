class User < ApplicationRecord
  has_many :followed_users, class_name: "Follow", foreign_key: :follower_id
  has_many :leaders, through: :followed_users

  has_many :following_users, class_name: "Follow", foreign_key: :leader_id
  has_many :followers, through: :following_users
end
