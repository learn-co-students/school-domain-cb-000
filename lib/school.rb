# code here!
class School
  attr_accessor :name, :roster

  def initialize(name)
    @name = name
    @roster = {}

  end

  def grade(level)
    @roster[level]
  end
  def add_student(name, grade)
    @roster[grade]||= []
    @roster[grade] << name
  end

  def sort
    #for each kv pair in object, where v is array, sort the array in place.
    @roster[9].sort!
    @roster
  end

end
