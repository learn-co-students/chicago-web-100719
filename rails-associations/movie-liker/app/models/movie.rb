class Movie < ApplicationRecord
  has_many :users, dependent: :destroy

  def shout
    puts upcase_title
  end
  private
  def upcase_title
    self.title.upcase
  end
end
