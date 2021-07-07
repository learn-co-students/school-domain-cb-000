class School
attr_accessor :roster, :name



  def initialize(name)
    @name = name
    @roster = Hash.new {|hash, key| hash[key] = []}
  end

  def add_student(name, grade)
    @roster[grade] << name
  end

def grade(grade)
  @roster[grade]
end

def sort
  Hash[@roster.map { |key, value| [key, value.sort] }]
end

end
