class User < ActiveRecord::Base
  attr_accessible :email, :password, :password_confirmation, :password_digest

  has_secure_password

  validates :email, presence: true
  validates :password, presence: true,
                       on: :create,
                       length: { minimum: 8, maximum: 16 }
end
