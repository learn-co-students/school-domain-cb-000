class School

  attr_reader :name

  def initialize(name)
    @name = name
    @roster = Hash.new []
  end

  def roster
    @roster
  end

  def add_student(student, grade)
    @roster[grade] += [student]
  end

  def grade(grade)
    @roster[grade]
  end

  def sort
    @roster.each do |key, values|
      @roster[key].sort!
    end
    @roster
  end
end
