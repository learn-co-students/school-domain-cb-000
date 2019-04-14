class School
  attr_accessor :roster

  def initialize(roster)
    roster = Hash.new{|h, key| h[key] = []}
    @roster = roster
  end

  def add_student(name,grade)
    roster[grade] << name
  end

  def grade(grade)
    roster.values_at(grade).flatten
  end

  def sort
    roster.each_value{|v| v.sort!}
  end



end
