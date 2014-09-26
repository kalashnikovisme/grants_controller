class Contest < ActiveRecord::Base
  attr_accessible :description,
                  :link,
                  :title,
                  :grant_operator_id,
                  :end_date

  belongs_to :grant_operator

  validates :description, presence: true
  validates :link, presence: true, url: true
  validates :title, presence: true
  validates :grant_operator_id, presence: true
  validates :end_date, presence: true
end
