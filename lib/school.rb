# code here!
class School

  attr_accessor :name, :roster

  def initialize(name)
    @name = name
    @roster = {}
  end

  def add_student(student, grade)
      roster[grade] ||= []
      roster[grade] << student
  end

  def grade(grades)
    roster[grades]
  end

  def sort
    x = {}
    roster.each do |y, z|
      x[y] = z.sort
    end
    x
  end

end
