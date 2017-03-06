# code here!
class School
  attr_accessor :student, :roster
  attr_reader :name

  def initialize(name)
    @name = name
    @roster = {}
  end

  def add_student(student, grade)
    roster[grade] = [] if !roster.detect { |k, v| k == grade }
    roster[grade] << student
  end

  def grade(grade)
    @grade = grade
    roster[grade]
  end

  def sort
    sorted_roster = {}
    roster.each do |g, s|
      sorted_roster[g] = s.sort
    end
    sorted_roster
  end
end
