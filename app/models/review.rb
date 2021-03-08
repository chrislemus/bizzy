class Review < ApplicationRecord
  belongs_to :user
  belongs_to :business

  def rating_with_stars
    stars = ''
    rating.times {stars += '★'}
    "#{stars} #{rating}"
  end
end
