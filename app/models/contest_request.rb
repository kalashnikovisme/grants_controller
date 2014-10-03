class ContestRequest < ActiveRecord::Base
  attr_accessible :annotation,
                  :audience,
                  :estimates,
                  :goal,
                  :multiplicativity,
                  :plan,
                  :problem,
                  :real_methods,
                  :results,
                  :tasks,
                  :user_id,
                  :contest_title,
                  :contest_url

  belongs_to :user

  validates :annotation, presence: true
  validates :audience, presence: true
  validates :real_methods, presence: true
  validates :estimates, presence: true
  validates :goal, presence: true
  validates :multiplicativity, presence: true
  validates :plan, presence: true
  validates :problem, presence: true
  validates :results, presence: true
  validates :tasks, presence: true
  validates :user_id, presence: true
  validates :contest_title, presence: true
  validates :contest_url, presence: true,
                          url: true
end
