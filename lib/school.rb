# code here!
class School

attr_accessor :name, :roster

def initialize(name)
  @name = name
  @roster = {}
end

def add_student(name, age)
  roster[age] = [] unless roster[age]
  roster[age] << name
end

def grade(num)
  @roster[num]
end

def sort
  @roster.each do |key, value|
    value.sort!
  end
end


end
