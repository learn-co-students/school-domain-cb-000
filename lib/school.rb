# code here!
class School

attr_accessor :roster

def initialize(school)
  @school = school
  @roster=  Hash.new {|h,k| h[k]=[]}
end

def add_student(student,grade)

  @roster[grade]<< student


end

def grade(grades)
  @roster[grades]
end

def sort
  @roster.each_value {|value| value.sort!}

end



end
