class School
  attr_accessor :roster, :student_name, :sch_name, :grade

  def initialize(sch_name)
    @sch_name = sch_name
    @roster = {}
  end

  def add_student(student_name, grade)
    @roster[grade] ||= []
    @roster[grade] << student_name
  end

  def grade(grade)
    @roster[grade]
  end

  def sort
    @roster.each do |grade, student_name|
      @roster[grade] = student_name.sort
    end
  end
end
