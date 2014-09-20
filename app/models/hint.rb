class Hint < ActiveRecord::Base
  attr_accessible :body,
                  :subject

  validates :subject, presence: true
  validates :body, presence: true
end
