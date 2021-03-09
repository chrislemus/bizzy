class Business < ApplicationRecord
  has_many :reviews
  belongs_to :owner, :class_name => "User"
  belongs_to :category

  validates :name, length: {minimum: 1}
  validates :phone, presence: true
  validates :category, presence: true
  validates :address, presence: true
  validates :city, presence: true
  validates :state, presence: true
  validates :zip, presence: true


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
    
    if self["#{today}_open"]
      opening = self["#{today}_open"].strftime("%-I%p")
      closing = self["#{today}_close"].strftime("%-I%p")
      "#{opening} - #{closing}"
    else
      'TODAY'
    end

  end

  def open? ##need refactor
    today = Date.today.strftime("%A").downcase
    if self["#{today}_open"]
      opening = self["#{today}_open"].strftime( "%H%M" )
      closing = self["#{today}_close"].strftime( "%H%M" )
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
