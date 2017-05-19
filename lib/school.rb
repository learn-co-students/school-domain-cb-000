# code here!
class School 
  attr_accessor
  attr_reader :name, :roster
  attr_writer

  def initialize(name)
    @name = name
    @roster = {}
  end
  
  def add_student(name, grade)
    if !@roster.key?(grade)
      @roster[grade] = [name]
    else
      @roster[grade] << name
    end
  end


  def grade(grade)
    @roster[grade]
  end

  def sort 
    ans = {}
    @roster.each { |grade,stds|
      ans[grade] = stds.sort
    }
    ans
  end
end  
