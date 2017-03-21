# code here!
class School
  attr_reader :school_name, :roster

  ROSTER = {}

  def initialize(school_name)
    @school_name = school_name
    @roster = ROSTER
  end

  def add_student(student_name, grade)
    if ROSTER.has_key?(grade) == false
      ROSTER[grade] = []
      ROSTER[grade] << student_name
    else
      ROSTER[grade] << student_name
    end
  end

  def grade(grade)
    return ROSTER[grade]
  end

  def sort
    ROSTER.each do |k,v|
      v.sort!
    end
  end
end
