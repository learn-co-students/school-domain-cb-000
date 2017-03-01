# code here!
class School
  def initialize(school_name)
    @roster={}
    def roster
      @roster
    end
  end

  def add_student(name, grade)
    if @roster.key?(grade)
      @roster[grade] << name
    else
      @roster[grade]=[]
      @roster[grade] << name
    end
  end

  def grade(grade)
    @roster[grade]
  end

  def sort
    @roster.each do |grade, name| 
      name.sort!
    end
  end

end
