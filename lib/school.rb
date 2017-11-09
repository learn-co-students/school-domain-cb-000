# code here!
class School
  attr_accessor :roster, :name

  def initialize(name)
    @name = name
    @roster = {}
  end

  def add_student(student, grade)
       @roster[grade] ? @roster[grade] << student : @roster[grade] = [student]
  end

  def grade(grade)
    @roster[grade]
  end

  def sort
    sorted_roster = {}
    @roster.each { |grade, students| sorted_roster[grade] = students.sort }
    sorted_roster
  end

end
