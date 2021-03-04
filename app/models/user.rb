class User < ApplicationRecord
  validates :email, presence: true
  validates :first_name, presence: true
  validates :email, uniqueness: true
  validates :password, length: {minimum: 8}
  has_secure_password


  def self.find_or_create_omni(auth)
    user = User.find_or_create_by(uid: auth['uid'], provider: auth['provider']) do |u|
      u.first_name = auth['info']['first_name']
      u.last_name = auth['info']['last_name']
      u.email = auth['info']['email']
    end
    user.password = SecureRandom.hex(16)
    user
  end

end


