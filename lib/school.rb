class School
  attr_accessor :name
  attr_reader :roster

  def initialize(name)
    self.name = name
    @roster = Hash.new
  end

  def add_student(name, grade)
    if @roster[grade] == nil
      @roster[grade] = Array.new
    end
    @roster[grade] << name
  end

  def grade(grade_level)
    return @roster[grade_level]
  end

  def sort()
    @roster.values.each{|names| names.sort!}
    return @roster
  end
end
