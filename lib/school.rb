require 'pry'
class School
  def initialize(name)
    @name = name
    @roster = {}
  end
  def add_student(name, grade)
    @roster[grade] = [] if !@roster.has_key?(grade)
    @roster[grade] << name
  end
  def roster
    @roster
  end
  def grade(number)
    @roster[number]
  end
  def sort
    @roster.each do |key, value|
      value.sort!
    end
    @roster
  end
end

#binding.pry
