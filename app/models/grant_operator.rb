class GrantOperator < ActiveRecord::Base
  attr_accessible :title, :url

  has_many :contests

  validates :title, presence: true
  validates :url, presence: true, url: true
end
