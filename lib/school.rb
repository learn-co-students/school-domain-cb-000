class School
  attr_reader :roster
  def initialize(new)
    @new = new
    @roster = {}
  end

  def add_student(student, grade)
    if @roster[grade] == nil
       @grade = grade
       @roster[@grade] = []
       @roster[@grade] << student
    else
      @roster[grade] << student
    end
  end

  def grade(grade)
    return @roster[grade]
  end

  def sort
    @roster.each do |grade, students|
      students.sort
    end
  end
end
