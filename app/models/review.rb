class Review < ApplicationRecord
  belongs_to :guest_id
  belongs_to :business_id
end
