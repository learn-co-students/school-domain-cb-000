# code here!
class School
  attr_reader :roster

  def initialize(school)
    @school = school
    @roster = {}
  end

  def add_student(student, grade)
    if @roster.include?(grade)
      @roster[grade] << student
    else
      @roster[grade] = [student]
    end
  end

  def grade(student_grade)
    if @roster.include?(student_grade)
      return @roster[student_grade]
    end
  end

  def sort
    @roster.each do |grade, student|
      @roster[grade] = student.sort
    end
    @roster
  end
end
