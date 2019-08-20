class School

  attr_accessor :roster
  attr_reader :name

  def initialize(school_name)
    @school_name = school_name
    @roster = {}
  end

  def add_student(student_name, grade)
    @roster[grade] = [] if @roster[grade] == nil
    @roster[grade] << student_name
  end

  def grade(num)
    @roster[num]
  end

  def sort 
    @roster.each do |key,value|
      @roster[key] = value.sort
    end
  end
end
