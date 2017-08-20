# code here!
class School
  ROSTER = {}

  def initialize(school_name)
    @school = school_name
    @roster = {}
  end

  def name
    @school
  end

  def roster
    @roster
  end

  def add_student(student, grade)
    (@roster[grade] ||= []) << student
  end

  def grade(grade_level)
    @roster[grade_level]
  end

  def sort
    @roster.each do |grade, students|
      students.sort!
    end
  end
end
