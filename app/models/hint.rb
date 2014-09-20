class Hint < ActiveRecord::Base
  attr_accessible :body,
                  :subject,
                  :lead

  validates :subject, presence: true,
                      uniqueness: true
end
