# code here!
class School

  attr_accessor :name, :roster

  def initialize (name)
    @name = name
    @roster = {}
  end

  def add_student(student, grade)
    if @roster.keys.include?(grade) == false
      @roster[grade]=[]
    end
    @roster[grade]<<student
  end

  def grade(grade)
    return @roster[grade]
  end

  def sort
    sort_g=@roster.keys.sort
    sort_s={}
    sort_g.each do |grade|
      sort_s[grade]=[]
      sort_s[grade]=@roster[grade].sort
    end
    return sort_s
  end



end
