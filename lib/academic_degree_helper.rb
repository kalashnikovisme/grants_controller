require 'academic_degree'

module AcademicDegreeHelper
  include AcademicDegree

  def self.russian_degree_list
    AcademicDegree.degree_list :ussr, :ru
  end
end
