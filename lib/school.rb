# code here!
class School
  attr_accessor :name, :roster
  
  def initialize(name)
    @name = name
    @roster = {}
  end
  
  def add_student(student, grade)
    if !@roster.key?(grade)
      @roster[grade] = [student]
    else 
      @roster[grade] << student
    end
  end
  
  def grade(grade)
    @roster[grade]
  end
  
  def sort
    sorted = {}
    @roster.map do |grade, students|
      sorted[grade] = students.sort
    end
    sorted
  end
end