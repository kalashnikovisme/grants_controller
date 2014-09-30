class Organization < ActiveRecord::Base
  attr_accessible :title, :url, :org_type

  has_many :contests

  validates :title, presence: true
  validates :url, presence: true, url: true
  validates :org_type, presence: true

  extend Enumerize

  enumerize :org_type, in: [ :grant_operator, :grantor ], default: :grantor
end
