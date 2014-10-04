class Page < ActiveRecord::Base
  attr_accessible :body,
                  :section,
                  :slug,
                  :title

  validates :title, presence: true
  validates :body, presence: true
  validates :slug, presence: true,
                   uniqueness: true
  validates :section, presence: true

  extend Enumerize
  enumerize :section, in: [ :about ], default: :about
end
