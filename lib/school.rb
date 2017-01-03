# code here!

class School
  attr_accessor :name
  def initialize(name)
    #@name = name
    @roster = {}
  end

  def roster
    @roster
  end


  def add_student(student, grade)
        if @roster[grade] == nil
          @roster[grade] = []
          @roster[grade] << student
        else
          @roster[grade] << student
        end
  end

  def grade(grade)
    @roster[grade]
  end

  def sort
    @roster.each do |x, y|
      y.sort!
    end
  end
end
