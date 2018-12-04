class School
  attr_accessor :name, :roster

  def initialize(name)
    @name = name
    @roster = {}
  end

  def add_student(stud_name, grade)
    @roster[grade] ||= []
    @roster[grade] << stud_name
  end

  def grade(stud_grade)
    @roster[stud_grade]
  end

  def sort
    ordered = {}
    roster.each do |grade, student|
      ordered[grade] = student.sort
    end
    ordered
  end
end
#I'm not sure why Learn keeps telling me my code is the same as the lesson's.
