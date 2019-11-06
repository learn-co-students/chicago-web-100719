class Watermelon < ApplicationRecord
  validates :nickname, presence: true, uniqueness: {case_sensitive: false}
  validates :shape, presence: true, inclusion: { in: ["sphere", "cube", "ovoid"], message: "%{value} is not a valid shape"}
  validate :validate_seeds

  def validate_seeds
    if self.seedcount.class != Integer || self.seedcount < 1
      self.errors.add(:seedcount, "Seed count must be greater than 0")
    end
  end
end
