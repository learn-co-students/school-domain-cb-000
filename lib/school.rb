# code here!
class School
  attr_accessor(:name,:roster)
  def initialize(name)
    @name=name
    @roster={}
  end

  def add_student(name,grade)
    @roster[grade] ||= []
    @roster[grade] << name
  end

  def grade(tgrade)
    @roster[tgrade]
  end

  def sort
    @roster.each do |grade,students|
      @roster[grade]=students.sort
    end
    @roster
  end

end
