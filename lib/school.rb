class School
  attr_accessor :roster, :student

  def initialize(student)
    @student = student
    @roster = {}
  end

  def add_student(student, grade)
    @roster.has_key?(grade) ? @roster[grade] << student : @roster[grade] = [student]
  end

  def grade(grades)
    @roster[grades]
  end

  def sort
    @roster.sort_by(&:first).map { |k, v| [k, v.sort]}.to_h
  end
end
