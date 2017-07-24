# code here!
class School
  attr_reader :school_name, :roster

  def initialize(school_name)
    @school_name = school_name
    @roster = {}
  end

  def add_student(students, grade)
    if @roster.any? { | grade_level, student_list | @roster[grade] }
      @roster[grade] << students
    else
      @roster[grade] = []
      @roster[grade] << students
    end
  end

  def grade(grade)
    @roster[grade]
  end

  def sort
    @roster.each do | grade, student_list |
      @roster[grade] = student_list.sort
    end
  end
end
