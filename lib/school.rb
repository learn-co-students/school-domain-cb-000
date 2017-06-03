require 'pry'
# This is a School class
class School
  attr_accessor :name, :roster

  def initialize(name)
    @name = name
    @roster = {}
  end

  def add_student(name, grade)
    roster[grade] ||= []
    roster[grade] << name
  end

  def grade(student_grade)
    roster[student_grade]
  end

  def sort
    sorted_list = {}
    roster.each do |grade, students|
      sorted_list[grade] = students.sort
    end
    sorted_list
  end
end
