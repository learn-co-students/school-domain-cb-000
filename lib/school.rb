require 'pry'
class School
  attr_accessor :name
  attr_reader :roster
  def initialize name
    @name = name
    @roster = {}
  end

  def roster=(roster)
    @roster[roster.keys[0]] = [] unless @roster[roster.keys[0]]
    @roster[roster.keys[0]] << roster.values[0]
    # binding.pry
  end

  def add_student name, grade
    self.roster = {grade => name}
  end

  def grade g
    @roster[g]
  end

  def sort
    sorted = {}
    @roster.each do |key, value|
      sorted[key] = value.sort
    end
    sorted
  end
end
