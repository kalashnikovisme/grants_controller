class Contest < ActiveRecord::Base
  include ContestRepository
  attr_accessible :description,
                  :link,
                  :title,
                  :organization_id,
                  :end_date,
                  :subject

  belongs_to :organization

  validates :description, presence: true
  validates :link, presence: true, url: true
  validates :title, presence: true
  validates :organization_id, presence: true
  validates :end_date, presence: true
  validates :subject, presence: true

  extend Enumerize
  enumerize :subject, in: [ :volunteering,
                            :leadership,
                            :innovation,
                            :agriculture,
                            :science,
                            :other ],
                      default: :other
end
