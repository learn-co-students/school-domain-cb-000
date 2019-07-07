# code here!
class School
      attr_accessor :name ,:roster
  def initialize(name)
    @school = name
    @roster = {}
  end

  def add_student(name,grade)
    students = []
    if roster[grade] == nil

    students << name
    roster[grade] = students

  else
    roster[grade] << name
  end
  end

  def grade(grade)
  return  roster[grade]
  end

  def sort
    roster.each do |key , value|
      roster[key].sort

  end
end
