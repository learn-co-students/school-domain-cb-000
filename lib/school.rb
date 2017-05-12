# code here!

class School

  attr_accessor :name, :roster

  def initialize(name)
    @name = name
    @roster = {}
  end

  def add_student(student_name, grade)
    if @roster.key?(grade)
      @roster[grade] << student_name
    else
      puts @roster[grade] = [student_name]
    end
  end

  def grade(grade_number)
    return @roster[grade_number]
  end

  def sort
    roster.each do |grade, names|
      puts names.sort!
    end
  end

end
