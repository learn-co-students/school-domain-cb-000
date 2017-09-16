# code here!
class School
    attr_accessor :name, :roster
  def initialize(name)
    @name = name
    @roster = roster
    @roster = {}
  end
  def add_student(student,grade)
    @student = student
    @grade = grade
    @roster[@grade] ||=[]
    @roster[@grade] << @student
  end
  def grade(grade)
    @roster.fetch(grade)
  end
  def sort
    @roster.each do |key,value|
      @roster[key] = value.sort{|a,b| a[0]<=>b[0] }
    end
  end
end
