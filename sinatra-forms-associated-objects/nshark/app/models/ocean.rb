class Ocean < ActiveRecord::Base
  has_many :shark_oceans
  has_many :sharks, through: :shark_oceans
end
