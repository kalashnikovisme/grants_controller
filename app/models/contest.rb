class Contest < ActiveRecord::Base
  attr_accessible :description,
                  :link,
                  :title,
                  :grant_operator_id

  belongs_to :grant_operator

  validates :description, presence: true
  validates :link, presence: true, url: true
  validates :title, presence: true
  validates :grant_operator_id, presence: true
end
