# code here!
class School
  attr_reader :name, :roster

  def initialize(name, roster = {})
    @name = name
    @roster = roster
  end

  def add_student name, grade
    if !roster.include?(grade)
      roster[grade] = []
    end
    roster[grade] << name
  end

  def grade grade
    roster[grade].collect {|val| val }
  end

  def sort
    roster.collect do |key, val|
      val.sort!
    end
    roster
  end
end
