# code here!
class School
  attr_accessor :roster, :student_name, :school_name
  def initialize(school_name)
    @school_name = school_name
    @roster = Hash.new{ |h, k| h[k] = [] }
  end

  def add_student(student_name, grade)
    @roster[grade] << student_name
  end

  def grade(stud_grade)
    @roster[stud_grade]
  end

  def sort
    Hash[@roster.map { |a,b| [a, b.sort] }]
  end

end
