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
    roster_sorted = {}
    @roster.each do |grade, students|
      roster_sorted[grade] = students.sort
    end
    roster_sorted
  end
end
