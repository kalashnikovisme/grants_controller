class Organization < ActiveRecord::Base
  attr_accessible :title,
                  :url,
                  :org_type,
                  :logo

  has_many :contests

  mount_uploader :logo, LogoUploader

  validates :title, presence: true
  validates :url, presence: true, url: true
  validates :org_type, presence: true

  extend Enumerize

  enumerize :org_type, in: [ :grant_operator, :grantor ], default: :grantor
end
