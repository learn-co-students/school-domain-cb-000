class School

  attr_accessor :roster

  def initialize(name)
    @name = name
    @roster = {}
  end

  def add_student(stud, grade)
    if @roster[grade].kind_of?(Array)
      @roster[grade] << stud
    else
      @roster[grade] = []
      @roster[grade] << stud
    end
  end

  def grade(g)
    @roster[g]
  end

  def sort
    @sorted = Hash[@roster.sort_by { |key, val| key }]
    @sorted.each_value { |v| v.sort! }
  end

end
