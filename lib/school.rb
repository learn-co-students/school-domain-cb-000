# code here!

class School
  attr_accessor :roster, :student_name, :school_name

  def initialize(school_name)
    @school_name = school_name
    @roster = {}
  end

  def add_student(student_name, grade)
    if @roster[grade]
      @roster[grade] << student_name
    else
      @roster[grade] = []
      @roster[grade] << student_name
    end
  end

  def grade(key)
    return @roster[key]
  end

  def sort
    @roster.each do |key, array|
      @roster[key] = array.sort
    end
  end


end
