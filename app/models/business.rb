class Business < ApplicationRecord
  has_many :reviews
  belongs_to :owner, :class_name => "User"
  belongs_to :category
  belongs_to :hour

  def full_address
    "#{address}, #{city}, #{state} #{zip}"
  end

  def avg_rating_with_star
    avg_rating = self.reviews.average('rating').to_f.round(1)
    stars = ''
    avg_rating.floor.times {stars += '★'}
    "#{stars} #{avg_rating}"
  end

  def today_hours ##need refactor
    today = Date.today.strftime("%A").downcase
    
    if hour["#{today}_open"]
      opening = hour["#{today}_open"].strftime("%-I%p")
      closing = hour["#{today}_close"].strftime("%-I%p")
      "#{opening} - #{closing}"
    else
      'TODAY'
    end

  end

  def open? ##need refactor
    today = Date.today.strftime("%A").downcase
    if hour["#{today}_open"]
      opening = hour["#{today}_open"].strftime( "%H%M" )
      closing = hour["#{today}_close"].strftime( "%H%M" )
      Time.now.strftime( "%H%M" ).between?(opening, closing)
    else
      false
    end
  end

  def reviews_3
    reviews = self.reviews.limit(3)
    reviews.map{|r| r.content}
    # review&.content ? review&.content : nil
  end

end
