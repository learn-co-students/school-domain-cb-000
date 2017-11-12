class School
  attr_accessor :name, :roster

  def initialize(name)
    @name = name # initialize with a name
    @roster = {} # has an empty roster when initialized. keys will be grade level; values will be an array of student names
  end

  # add a student to the school by calling the add_student method and giving it an argument of the student's name and their grade
  # You can't push an item into an array that is the value of a key that doesn't exist yet...
  def add_student(student_name, grade)
    # roster[grade] = [] # ...first: create the new key and point it to an empty array
    roster[grade] ||= [] # add multiple students to a grade & add students to different grades using ||=
    roster[grade] << student_name # ...then: push the new value into that array
  end
end


=begin
https://stackoverflow.com/questions/995593/what-does-or-equals-mean-in-ruby

Q: What Does "or equals" Mean In Ruby?

A:  If 'a' is undefined or falsey, then evaluate 'b' and set 'a' equal to the result

Example:  a ||= b
          is the same as each of these:

          a || a = b
          a ? a : a = b
          if a then a else a = b end

Why use "or equals" for adding successive students to each grade:
Let's say that we're adding the student "AC Slater" to grade 9.
If the roster already has a key of grade 9, we'll be able to push AC Slater into the array that the grade 9 key points to.
Otherwise, we'll need to first create the key of grade 9 and point it to an empty array.
However, if we're in the scenario in which the grade 9 key already exists, we will erase its current contents by creating a key of 9 and setting it equal to an empty array.

roster[grade] ||= [] --> roster[if "grade exists" then "existing grade" else "new grade"]

school.add_student("Zach Morris", 9) # grade 9 array created with student
school.add_student("AC Slater", 9) # student added to existing grade 9 array
school.add_student("Kelly Kapowski", 10) # grade 10 array created with student
school.add_student("Screech", 11) # grade 11 array created with student

school.roster => {9 => ["Zach Morris", "AC Slater"], 10 => ["Kelly Kapowski"], 11 => ["Screech"]}
=end
