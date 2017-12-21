# code here!
class School
  attr_reader :name, :roster
  def initialize(name)
    @name = name
    @roster = {}
  end
  def add_student(student, grade)

    if @roster.include?(grade) == true
      @roster[grade].push(student)
    else
    @roster[grade] = [student]
  end
  end

  def grade(grade)
    return roster[grade]
  end

  def sort
    return @roster.each_key {|x| roster[x].sort!}
  end
end
