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
