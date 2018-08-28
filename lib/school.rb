# code here!
class School
  attr_accessor :name, :roster, :add_student
  def initialize(name, roster={})
    @name = name
    @roster = roster
  end

  def add_student(name, grade)
    if @roster.include?(grade)
      @roster[grade] << name
    else
      @roster[grade] = []
      @roster[grade] << name
    end
  end

  def grade(num)
    @roster[num]
  end

  def sort
    @roster.each do |grade, students|
      students.sort!
    end
  end
end
