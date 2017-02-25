require 'pry'
class School
  attr_accessor
  attr_reader :roster
  attr_writer

  def initialize(school_name)
    @name = school_name
    @roster = {}
  end

  def add_student(student_name, grade)
    unless @roster.include?(grade)
      @roster[grade] = []
    end
    @roster[grade] << student_name
  end

  def grade(n)
    @roster[n]
  end

  def sort
    @roster.each do |key, value|
      value.sort!
    end
    @roster
  end

end