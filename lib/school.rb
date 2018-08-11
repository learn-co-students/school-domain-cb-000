class School
  attr_reader :name 
  
  def initialize(name)
    @name = name
    @roster = {}
  end

  def roster
    @roster
  end 
  
  def add_student(name, grade)
    if @roster[grade].nil?
      roster[grade] = []
    end
    roster[grade] << name
  end
  
  def grade(grade)
    @roster[grade]
  end 
  
  def sort 
    result = {}
    @roster.each do |grade, names|
      result[grade] = names.sort
    end
    result
  end 
  
end
