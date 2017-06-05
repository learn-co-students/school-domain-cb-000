class School
  attr_reader :roster
  def initialize(new)
    @new = new
    @roster = {}
  end
  def add_student(student, grade)
    if @roster[grade] == nil
      @roster[grade] = []
      @roster[grade] << student
    end
  end
end
