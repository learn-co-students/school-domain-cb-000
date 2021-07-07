# code here!
require "pry"
class School
  attr_reader :roster
  def initialize(school_name = "Test school")
    @school_name = school_name
    @roster = {}
  end


  def add_student(student_name, student_grade)
    if @roster.include?(student_grade)
    @roster[student_grade] << student_name
  else
    @roster[student_grade] = []
    @roster[student_grade] << student_name
    @roster
  end
  end


  def grade(grade)
    @roster[grade]
  end

  def sort
    #binding.pry
    Hash[@roster.sort_by {|a,b| b}]
  end
end
