class Business < ApplicationRecord
  has_many :reviews
  belongs_to :owner, :class_name => "User"
  belongs_to :category
  scope :query, -> (query, results_per_page,current_page) { 
    where("name LIKE ?", "%#{query}%")
    .limit(results_per_page)
    .offset((results_per_page * current_page) - results_per_page) 
  }
  scope :page_count, -> (query,results_per_page) { (where("name LIKE ?", "%#{query}%").count/ results_per_page).ceil}


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

  def today
    Date.today.strftime("%A").downcase
  end

  def opening
    self["#{today}_open"]
  end

  def closing
    self["#{today}_close"]
  end

  def get_hours
    Date::DAYNAMES.rotate(1).map do |day|
      day = day.downcase
      opening = self["#{day}_open"]
      closing = self["#{day}_close"]

      if opening
        "#{day.capitalize[0..2]} #{opening.strftime("%-I%p")} - #{closing.strftime("%-I%p")}"
      else
        "#{day.capitalize[0..2]} close"
      end
    end
  end

  def open? 
    if opening
      Time.now.strftime( "%H%M" ).between?(opening.strftime( "%H%M" ), closing.strftime( "%H%M" ))
    else
      false
    end
    
  end

end
