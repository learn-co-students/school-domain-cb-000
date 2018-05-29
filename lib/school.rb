# code here!
class School
  def initialize(name)
    @name = name
    @roster = {}

  end

  def roster
    @roster
  end

  def add_student(student, grade)
    if @roster.keys.include?(grade) == false
      @roster[grade] = []
    end
    @roster[grade] << student
  end

  def grade(grade)
    @roster[grade]
  end

  def sort
    hash = {}
    @roster.each do |grade, student|
        if hash.keys.include?(grade) == false
          hash[grade]=[]
        end
        hash[grade]= @roster[grade].sort
     end
     @roster = hash


  end




end

# school = School.new("Bayside High School")
# roster = school.roster
# # school.grade(9)
# # school.add_student("trey", 9)
# # school.add_student("Jerry", 9)
#
# school.add_student("Homer Simpson", 9)
# school.add_student("Bart Simpson", 9)
# school.add_student("Avi Flombaum", 10)
# school.add_student("Jeff Baird", 10)
# school.add_student("Blake Johnson", 7)
# school.add_student("Jack Bauer", 7)
#
# # hash = {}
# # roster.each do |g,s|
# #   if hash.keys.include?(g) == false
# #     hash[g]=[]
# #   end
# #   hash[g]= roster[g].sort
# # end
# # hash
