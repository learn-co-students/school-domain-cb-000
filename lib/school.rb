class School
  attr_reader :roster
  def initialize(new)
    @new = new
    @roster = {}
  end
  def add_student(student, grade)
    if @roster[grade] == nil
      @roster[grade] = []
      student.each do |a|
        @roster[grade] << a
      end
    end
  end
end
