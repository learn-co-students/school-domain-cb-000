class School
  attr_accessor :name, :roster, :student

  def initialize(name)
    @name = name
    @roster = {}
  end

  def add_student(name,grade)
    roster[grade] ||= []
    roster[grade] << name
  end

  def grade(grade)
    roster[grade]
  end

  def sort
    sorted_hash = {}
    roster.each do |grade, students|
      sorted_hash[grade] = students.sort
    end
    sorted_hash
  end

end
