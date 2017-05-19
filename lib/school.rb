# code here!
class School
  attr_reader :roster

  def initialize(name)
    @name = name
    @roster = {}
  end

  def add_student(name, grade)
    if not @roster.has_key?(grade)
      @roster[grade] = []
    end

    @roster[grade] << name
  end

  def grade(grade)
    @roster[grade]
  end

  def sort
    @roster.collect do |keys, students|
      students.sort!
    end
    
    @roster
  end        

end