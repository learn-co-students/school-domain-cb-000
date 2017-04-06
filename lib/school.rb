# code here!

class School

  def initialize(name)
    @name = name
    @roster = {}
  end  
  attr_accessor :roster

  def add_student(name, grade)
    roster[grade] = [] if roster[grade] == nil
    roster[grade] << name
  end

  def grade(num)
    roster[num]
  end  

  def sort
    a = Hash[roster.sort]
    a.values.sort!
    a
  end    

  
end  