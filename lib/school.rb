class School
  def initialize(name)
    @name = name 
 
    @roster = {}
  end   
  
  def add_student(student_name, grade)
    if @roster.has_key?(grade)
        @roster[grade] << student_name
    else
        @roster[grade] = []
        @roster[grade] << student_name
    end 
  end 
  
  def grade(grade)
    if @roster.has_key?(grade)
        @roster[grade]
    end 
  end 
  
  def sort 
    
    sorted = {}
    
    @roster.each { |grade, students|
        puts("Sorting grade: #{grade}");
      sorted[grade] = students.sort }
      puts("Result: #{sorted}")
      sorted
  end
  
  def roster
    return @roster
  end 
  
end 
