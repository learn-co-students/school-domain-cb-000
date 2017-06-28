# code here!
class School
  attr_accessor
  attr_reader :name, :roster

  def initialize(name)
    @name = name
    @roster = {}
  end

   def add_student(name, grade)
     @roster[grade] ? @roster[grade] << name : @roster[grade] = [] << name
   end

  def grade(grade)
    @roster.values_at(grade).flatten
  end

  def sort
    sorted = {}
    roster.each do |grade, students|
      sorted[grade] = students.sort
    end
    sorted
  end

end
