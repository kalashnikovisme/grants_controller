class GrantOperator < ActiveRecord::Base
  attr_accessible :title, :url

  validates :title, presence: true
  validates :url, presence: true, url: true
end
