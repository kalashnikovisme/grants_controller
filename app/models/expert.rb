class Expert < ActiveRecord::Base
  attr_accessible :degree,
                  :job,
                  :post,
                  :user_id

  belongs_to :user

  validates :job, presence: true
  validates :post, presence: true
  validates :degree, presence: true
  validates :user_id, presence: true


  extend Enumerize
  include AcademicDegreeHelper
  enumerize :degree, in: AcademicDegreeHelper.russian_degree_list,
                     default: AcademicDegreeHelper.russian_degree_list.first
end
