class Shark < ActiveRecord::Base
  has_many :shark_oceans
  has_many :oceans, through: :shark_oceans
end
