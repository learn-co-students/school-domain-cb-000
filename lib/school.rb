# code here!
class School
  
  attr_accessor :name, :roster
  #attr_reader :grade
 
  
  def initialize(name)
    @name = name
    @roster = {}
  end
  
  def add_student(student_name, student_grade)
    if(!roster[student_grade])
      roster[student_grade] = []
    end
    
    if student_name.kind_of?(Array)
        student_name.each do |x|
          roster[student_grade] << x
        end
    else roster[student_grade] << student_name
    end
  end
  
  def grade(student_grade)
    roster[student_grade]
  end
  
  def sort
    sorted_roster = {}
    roster.each do |student_grade, student_name|
      sorted_roster[student_grade] = roster[student_grade].sort
    end
    sorted_roster
    
  end
  
end