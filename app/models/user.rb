class User < ActiveRecord::Base
  attr_accessible :email,
                  :password,
                  :password_confirmation,
                  :password_digest,
                  :role

  has_many :experts

  has_secure_password

  validates :email, presence: true
  validates :password, presence: true,
                       on: :create,
                       length: { minimum: 8, maximum: 16 }
  validates :password_confirmation, presence: true,
                       on: :create,
                       length: { minimum: 8, maximum: 16 }

  extend Enumerize

  enumerize :role, in: [ :default_user, :admin ], default: :default_user
end
