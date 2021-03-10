class Category < ApplicationRecord
  has_many :businesses
  has_many :owners, :foreign_key => 'owner_id', through: :businesses
end
