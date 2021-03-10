class Review < ApplicationRecord
  belongs_to :user
  belongs_to :business
  validate :review_limit

  #users have a limit of one review per business
  def review_limit
    no_previous_reviews = business.reviews.where('user_id = ?', user.id).count == 0
    errors.add(:review_limit, "You can only write one review per business") unless no_previous_reviews
  end

  def rating_with_stars
    stars = ''
    rating.times {stars += '★'}
    "#{stars} #{rating}"
  end

end
31