# code here!
class School

  attr_accessor :name
  attr_reader :roster

  def initialize(rstr)
    @roster = {}
  end

  def add_student(name,grade)
    if @roster.key?(grade)
      @roster[grade] << name
    else 1 + 1 == 2
      @roster[grade] = []
      @roster[grade] << name
    end
  end

  def grade(num)
    @roster[num]
  end

  def sort
    @roster.each {|grade, name| @roster[grade].sort!}
  end

end

school = School.new("Farmington")

school.roster
