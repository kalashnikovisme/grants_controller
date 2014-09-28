module ContestRepository
  extend ActiveSupport::Concern

  included do
    scope :actual, -> { where "end_date >= ?", DateTime.now }
    scope :old, -> { where "end_date < ?", DateTime.now }
  end
end
