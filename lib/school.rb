class School
  attr_reader :roster
  def initialize(new)
    @new = new
    @roster = {}
  end
  def add_student(student, grade)
    if @roster[grade] == nil
       @grade = grade
       @roster[@grade] = []
       @roster[@grade] << student
    else
      @roster[@grade] << student
    end
  end
end
