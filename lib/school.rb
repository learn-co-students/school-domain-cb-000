class School
  attr_accessor :name, :roster

  def initialize(name)
    self.name = name
    self.roster = {}
  end

  def add_student(student, grade)
    self.roster[grade] = [] unless self.roster.keys.include?(grade)
    self.roster[grade] << student
  end

  def grade(grade)
    self.roster[grade]
  end

  def sort
    new_hash = {}
    self.roster.keys.sort.each { |k| new_hash[k] = self.roster[k].sort }
    new_hash
  end
end
