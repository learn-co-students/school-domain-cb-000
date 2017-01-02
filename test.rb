class School
  attr_reader :name, :roster

  def initialize (name)
    @name = name
    @roster = {}
  end

  def add_student(student, grade)
    if @roster.keys.include?(grade) == false
      @roster[grade]=[]
    end
    @roster[grade]<<student
  end

end

rocky = School.new("RIHS")

puts rocky.name
puts rocky.roster
puts rocky.roster.length
