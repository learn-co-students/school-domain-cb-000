# code here!
class School
  attr_accessor :roster, :name

  def initialize(school_name)
    @name = school_name
    @roster = {}
  end

  def add_student(student_name, grade)
    if !@roster[grade]
      @roster[grade] = []
    end
      @roster[grade] << student_name
  end

  def grade(num)
    return @roster[num]
  end

  def sort
    temp = @roster
    temp.collect do |grade, students|
      temp[grade] = students.sort
    end
    return temp
  end

end

PHS = School.new("Princeton")
PHS.add_student("Tomaz", 12)
PHS.add_student("Alex", 12)
puts PHS.sort
