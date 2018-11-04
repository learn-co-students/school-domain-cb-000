# code here!
require 'pry'

class School




  def initialize(name)
    @name = name
    @roster = {}

  end

  def roster
    return @roster
  end

  def add_student(name,number)

    if (@roster == {})
      @roster[number] = []
      @roster[number] << name
      #binding.pry
    elsif roster.keys.include?(number)
      @roster[number] << name
    else
      @roster[number] = []
      @roster[number] << name
    end
    return @roster
  end

  def grade(grade)
    @roster[grade]
  end

  def sort

    @roster.each do |grade, list|
      @roster[grade] = list.sort
    end
    return @roster
  end

end


school = School.new("Bayside High School")
school.add_student("carlos gon", 10)
