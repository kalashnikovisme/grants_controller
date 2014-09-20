class Hint < ActiveRecord::Base
  attr_accessible :body,
                  :subject,
                  :lead

  validates :subject, presence: true,
                      uniqueness: true
  validates :body, presence: true
  validates :lead, presence: true
end