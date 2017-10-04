# code here!
class School
  attr_reader :roster

  def initialize(name)
    @name = name
    @roster = {}
  end

  def add_student(name, grade)
    if @roster.include?(grade)
      @roster[grade] << name
    else
      @roster[grade] = [name]
    end
  end

  def grade(a_grade)
    @roster[a_grade]
  end

  def sort
    new_roster = {}
    @roster.each do |grade, name|
      new_roster[grade] = name.sort
    end
    new_roster
  end
end
