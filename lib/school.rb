# code here!
class School
  attr_accessor :name, :roster
  
  def initialize(name)
    @name = name
    @roster = {}
  end

  def add_student(student,grade)
    @roster[grade] = [] if @roster[grade] == nil
    @roster[grade] << student
  end 

  def grade(grade)    
    @roster.each do |key,data| 
      return data if key == grade
    end
  end

  def sort
    @roster.each do |grade,students|
      students.sort!
    end
  end
  
end


