class School
  attr_reader :roster

  def initialize(school_name)
    # @roster = [grade=>student_array,grade2 => student_array2]
    @school_name = school_name
    @roster = {}
  end

  def add_student(student,grade)
    @roster[grade] ||= []
    @roster[grade] << student
  end

  def grade(grade)
    # list all students in the given grade
    roster[grade]
  end

  # sort based on first name
  # output will be a hash
  # [grade=>[student1, student2],grade2=>[student3, studend4]]
  def sort
    roster.keys.each do |this_grade|
      roster[this_grade].sort!
    end
    roster
  end

end
