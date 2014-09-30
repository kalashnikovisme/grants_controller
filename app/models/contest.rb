class Contest < ActiveRecord::Base
  include ContestRepository
  attr_accessible :description,
                  :link,
                  :title,
                  :organization_id,
                  :end_date

  belongs_to :organization

  validates :description, presence: true
  validates :link, presence: true, url: true
  validates :title, presence: true
  validates :organization_id, presence: true
  validates :end_date, presence: true
end
