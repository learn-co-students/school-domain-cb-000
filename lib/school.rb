# code here!

class School
  attr_reader :roster, :name

  def initialize(name)
    @name = name
    @roster = {}
  end

  def add_student(student, grade)
    if @roster.key?(grade)
      @roster[grade] << student
    else
      @roster[grade] = []
      @roster[grade] << student
    end
  end

  def grade(grades)
    @roster[grades]
  end

  def sort
    @roster.each {|k, v| v.sort!}
  end

end
