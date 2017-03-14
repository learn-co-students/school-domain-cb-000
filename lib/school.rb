require 'pry'
# code here!
class School
  def initialize(name)
    @name = name
    @roster = {}
  end
  def roster
    @roster
  end
  def add_student(name, grade)
    unless @roster[grade]
      @roster[grade] = []      
    end
    @roster[grade] << name
  end
  def grade(grade)
    @roster[grade]
  end
  def sort
    @roster.each do |grade|
      grade[1].sort!
    end
    @roster
  end
end