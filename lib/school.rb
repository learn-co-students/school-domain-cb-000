# code here!

class School

  def initialize (name)
    @name = name
    @roster = {} 
  end

  def name
    @name
  end

  def add_student(student_name, grade)
    if @roster[grade] == nil 
      @roster[grade] = []
      @roster[grade] << student_name
    else
      @roster[grade] << student_name
    end
  end

  def grade(grade)
    @roster[grade] 
  end      

  def sort
    @roster.map do |grade, students_array|
      students_array.sort! {|a,b| a <=> b}
    end
    @roster
  end

  def roster
    @roster
  end
  
end

