class School

  attr_accessor :student_name, :student_grade, :roster

  def initialize(school_name)
    @roster = {}
  end

  def add_student(student_name, student_grade)

    if @roster.has_key?(student_grade)
      @roster[student_grade].push(student_name)
    else
      @roster[student_grade] = []
      @roster[student_grade].push(student_name)
    end
  end

  def grade(student_grade)
    @roster[student_grade]
  end

  def sort
    @roster.sort_by{|key, value| [key, value.sort!]}.to_h
  end
