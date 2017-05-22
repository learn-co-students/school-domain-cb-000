class School

  attr_reader :roster

  def initialize(school_name)
    @name = school_name
    @roster = {}
  end

  def add_student(student, grade)
    unless @roster.include?(grade)
      @roster[grade] = []
    end 
    @roster[grade] << student
  end

  def grade(mark)
    @roster[mark]
  end

  def sort
    @roster.each do |key, value|
      value.sort!
    end
    @roster
  end
end