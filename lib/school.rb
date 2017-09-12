# code here!
class School

  attr_accessor :name, :roster
  def initialize(name)
    @school = name
    @roster = {}
  end


  def add_student(student_name, grade)
    if roster[grade] != nil
      roster[grade] << student_name

    else
      roster[grade] = []
      roster[grade] << student_name
    end
  end

  def grade(grade_level)
    return roster[grade_level]

  end

  def sort
    sorted_hash = {}
    roster.each do |grade, students|
      sorted_hash[grade] = students.sort
    end
    sorted_hash
  end

end
