class School

  def initialize(name)
    @name = name
    @roster = {}
  end

  def add_student(student_name, grade)
    if @roster.key?(grade)
      @roster[grade] << student_name
    else
      @roster[grade] = [student_name]
    end
  end

  def grade(grade_level)
    @roster[grade_level]
  end

  def roster
    @roster
  end

  def sort
    @roster.each { |grade, students| students.sort! }
    @roster
  end
end
