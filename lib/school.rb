# code here!
require 'pry'
class School
  attr_reader :name, :roster

  def initialize(name)
    @name = name
    @roster = Hash.new
  end

  def add_student(name, grade)
    if @roster.has_key?(grade)
      @roster[grade] << name
    else
      @roster[grade] = [name]
    end
  end

  def grade(grade)
    roster[grade]
  end

  def sort
    @roster = @roster.each_pair{|key, value| @roster[key] = value.sort}
  end
end
