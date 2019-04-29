class School
  
  attr_accessor :roster
  
  def initialize(school_name)
    @school_name = school_name
    @roster = {}
  end
  def add_student(student_name, grade)
    if @roster.key?(grade)
      @roster[grade] << student_name
    else
      @roster[grade] = []
      @roster[grade] << student_name
    end
  end
  def grade(grade)
    return @roster[grade]
  end
  def sort
    @roster.each do |grade, roster|
      @roster[grade] = @roster[grade].sort
    end
    #return @roster
  end
  
end

