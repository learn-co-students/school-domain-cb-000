class School
  attr_reader :school, :roster

  def initialize(school)
    @school = school
    @roster = {}
  end

  def add_student(student, grade)
    roster[grade] = [] unless roster[grade]
    roster[grade] << student
  end

  def grade(grade)
    @roster[grade]
  end

  def sort
    @roster.each {|k, v| v.sort!}
  end
end
