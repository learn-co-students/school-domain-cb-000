# code here!
require 'pry'

class School

  attr_accessor :roster

  def initialize(school)
    @school = school
    @roster = Hash.new
  end

  def add_student(student, grade)
    unless @roster.include? grade
      @roster[grade] = []
    end
    @roster[grade] << student
  end

  def grade(grade)
    @roster[grade]
  end

  def sort
    @roster.map do |k, v|
      v.sort!
    end
    @roster
  end

end
