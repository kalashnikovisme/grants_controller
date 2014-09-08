class Expert < ActiveRecord::Base
  attr_accessible :degree,
                  :first_name,
                  :job,
                  :last_name,
                  :middle_name,
                  :post,
                  :user_id

  belongs_to :user

  validates :first_name, presence: true
  validates :middle_name, presence: true
  validates :last_name, presence: true
  validates :job, presence: true
  validates :post, presence: true
  validates :degree, presence: true
  validates :user_id, presence: true

  extend Enumerize
  include AcademicDegreeHelper
  enumerize :degree, in: AcademicDegreeHelper.russian_degree_list,
                     default: AcademicDegreeHelper.russian_degree_list.first
end
