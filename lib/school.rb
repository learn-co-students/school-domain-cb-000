class School
  attr_accessor :name , :roster , :sort
  def initialize (name)
    @name = name
    @roster = {}
  end

  def add_student (student_name, grade)
    if !@roster.include?(grade)
      @roster[grade] = []
    end
      @roster[grade] << student_name
  end

  def grade(grade)
    @roster[grade]
  end

  def sort
    sorted = @roster.each do |grade, students|
      students.sort!
    end
    sorted
  end
end
