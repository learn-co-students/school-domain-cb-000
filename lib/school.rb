class School
  attr_accessor :name

  def initialize(name)
    @name = name
    @hash = {}
  end

  def roster
    @hash
  end

  def sort
    @hash.each do |grade, name_array|
      @hash[grade] = name_array.sort
    end
  end

  def add_student(name, grade)
    @hash[grade] = [] if !@hash.keys.include?(grade)
    @hash[grade] << name
  end

  def grade(grade)
    @hash[grade]
  end

end

school = School.new("Bayside High School")
school.add_student("Homer Simpson", 9)
school.add_student("Bart Simpson", 9)
school.add_student("Avi Flombaum", 10)
school.add_student("Jeff Baird", 10)
school.add_student("Blake Johnson", 7)
school.add_student("Jack Bauer", 7)
