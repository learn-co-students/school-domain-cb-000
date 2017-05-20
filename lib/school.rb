# code here!
class School



  def initialize(name)
    @name = name
    @roster = {}
  end

  def add_student(student, grade)
    if !(@roster.has_key?(grade))
      @roster[grade] = []
    end
    @roster[grade] << student
  end

  def roster
    @roster
  end

  def grade(grade)
    @roster[grade]
  end

  def sort
    result = {}
    @roster.each do |grades, students|
      result[grades] = students.sort
    end
    result
  end

end
