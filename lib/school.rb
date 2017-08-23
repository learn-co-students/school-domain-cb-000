# code here!
class School
  attr_accessor :roster
  attr_reader :school

  def initialize(name)
    @school = name
    @roster = {}
  end

  def add_student(name, grade)
    @roster[grade] ||= []
    @roster[grade] << name
  end

  def grade(grade)
    @roster[grade]
  end

  def sort
    Hash[@roster.map { |grade, names| [grade, names.sort] }]

  end

end
