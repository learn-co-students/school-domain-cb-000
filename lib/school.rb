# code here!
class School
  attr_reader :roster, :school_name, :roster

  def initialize school_name
    @school_name= school_name
    @roster= {}
  end

  def add_student name,grade
    if !@roster[grade]
      @roster[grade] = []
    end
    @roster[grade] << name
  end

  def grade grade
    @roster[grade]
  end

  def sort
    sorted_roster = {}
    @roster.each do |grade, students|
      sorted_roster[grade] = students.sort
    end
    sorted_roster
  end

end

Bayside = School.new("Bayside")

Bayside.add_student("Zach Morris", 9)
Bayside.add_student("AC Slater", 9)

Bayside.sort
