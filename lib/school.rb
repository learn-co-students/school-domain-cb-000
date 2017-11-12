class School
  attr_accessor :name, :roster

  def initialize(name)
    @name = name # initialize with a name
    @roster = {} # has an empty roster when initialized. keys will be grade level; values will be an array of student names
  end

  # add a student to the school by calling the add_student method and giving it an argument of the student's name and their grade
  # You can't push an item into an array that is the value of a key that doesn't exist yet...
  def add_student(student_name, grade)
    roster[grade] = [] # ...first: create the new key and point it to an empty array
    roster[grade] << student_name # ...then: push the new value into that array
  end
end
