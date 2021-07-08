# code here!
class School

  def initialize(name)
    @name = name
    @roster = {}
  end

  def add_student(name, grade)
    if @roster.include?(grade)
      @roster[grade] << name
    else
      @roster[grade] = []
      @roster[grade] << name
    end
  end

  def grade(grade)
    @roster.fetch(grade)
  end

  def roster
    @roster
  end

  def sort
    @roster.each { |grade, students| @roster[grade] = @roster[grade].sort}
    @roster
  end
  # people.sort_by { |name, age| age }
    # => [[:joan, 18], [:fred, 23], [:pete, 54]]

end
