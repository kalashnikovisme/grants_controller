class Expert < ActiveRecord::Base
  attr_accessible :degree,
                  :first_name,
                  :job,
                  :last_name,
                  :middle_name,
                  :post

  validates :first_name, presence: true
  validates :middle_name, presence: true
  validates :last_name, presence: true
  validates :job, presence: true
  validates :post, presence: true
  validates :degree, presence: true

  extend Enumerize
  include AcademicDegree
  enumerize :degree, in: AcademicDegree.degree_list(:ussr, :ru),
                     default: AcademicDegree.degree_list(:ussr, :ru).first
end
