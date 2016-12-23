class School
  attr_reader :student, :grade, :add_student, :roster, :name, :sort

  def initialize(school_name)
    @school_name= school_name
    @roster ={}
  end


  def add_student(name, grade)
    @name = name
    if roster[grade] == nil
      roster[grade] = [name]
    else
      roster[grade] << name
    end
  end


  def grade(grade)
    @grade = grade
    @roster[grade]
  end

  def sort
    @roster.each do |grade, student|
      student.sort! #sorts all the students in each array and keeps them sorted with the!
    end
  end

end
