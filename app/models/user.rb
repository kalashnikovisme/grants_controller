class User < ActiveRecord::Base
  attr_accessible :email,
                  :password,
                  :password_confirmation,
                  :password_digest,
                  :role,
                  :first_name,
                  :middle_name,
                  :last_name,
                  :avatar

  has_one :experts
  has_many :requests

  has_secure_password

  validates :email, presence: true,
                    uniqueness: true
  validates :password, presence: true,
                       on: :create,
                       length: { minimum: 8, maximum: 16 }
  validates :password_confirmation, presence: true,
                       on: :create,
                       length: { minimum: 8, maximum: 16 }

  mount_uploader :avatar, AvatarUploader

  extend Enumerize

  enumerize :role, in: [ :default_user, :admin ], default: :default_user
end
