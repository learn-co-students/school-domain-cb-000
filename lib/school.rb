class School

  def initialize (name)
    @name = name
    @roster = {}
  end

  attr_reader :name, :roster

  def add_student (student_name, grade)
    #@roster[grade] = [] unless @roster.has_key?(grade)
    @roster[grade] ||= [] # huh, this is cool
    @roster[grade] << student_name
  end

  def grade (grade)
    @roster[grade]
  end

  def sort
    alpha_sorted_grades = {}
    @roster.each do |grade, names|
      alpha_sorted_grades[grade] = names.sort
    end
    alpha_sorted_grades
  end
end
