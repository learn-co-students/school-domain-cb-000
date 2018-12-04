class School

attr_accessor :name, :roster

def initialize(name)
@name = name
@roster = {}
end

def add_student(students_name, grade)
@roster[grade] ||= []
@roster[grade] << students_name
end

def grade (grade)
@roster[grade]
end

def sort
sorted = {}
@roster.each do |grade, students_name|
sorted[grade] = students_name.sort
end
sorted
end

end
