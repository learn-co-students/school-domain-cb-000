# code here!
class School
  attr_accessor :add_student
  attr_reader :name, :roster
  
  def initialize(name)
    @name = name
    @roster = {}
  end

  def name=(name)
    @name = name
  end
  
  def roster=(roster)
    @roster = roster
  end

  def add_student(name,grade)
    @roster[grade] = [] if !(@roster.has_key?(grade))
    @roster[grade] << name
  end

  def grade(grade)
    @roster[grade]
  end 
  
  def sort
    @roster.each{|k,v| @roster[k] = v.sort}
  end
end