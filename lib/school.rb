class School

  attr_accessor :roster
  attr_reader :name

  def initialize(name)
    @name = name
    @roster = Hash.new
  end

  def add_student(name, grade)
    @roster[grade] = [] if !@roster.keys.include?(grade)
    @roster[grade] << name
  end

  def grade(grade)
    @roster[grade]
  end

  def sort
    @roster.each do |grade, students|
      students.sort!
    end
  end

end
