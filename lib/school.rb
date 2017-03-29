# code here!
class School
  attr_reader :roster

  def initialize(school)
    @school = school
    @roster = Hash.new
  end

  def add_student(student_name, grade)
    @roster.keys.include?(grade) ? @roster[grade] << student_name : @roster[grade] = [student_name]
  end

  def grade(grade)
    @roster[grade]
  end

  def sort
    sorted = {}
    @roster.each do |grade, students|
      sorted[grade] = students.sort
    end
    sorted
  end

end
