class Contest < ActiveRecord::Base
  attr_accessible :description,
                  :founder,
                  :link,
                  :title

  validates :description, presence: true
  validates :founder, presence: true
  validates :link, presence: true, url: true
  validates :title, presence: true
end
