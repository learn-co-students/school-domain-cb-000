# code here!
class School

	attr_accessor :roster, :name

	def initialize(name)
		@roster = {}#roster initially an empty hash
		@name = name
	end

	def add_student(student, grade)#takes in variable name and grade
		@roster[grade] = [] if @roster[grade] == nil 
		@roster[grade] << student # adds student and grade to hash @roster
	end

	def grade(grade)
		return @roster[grade] 
	end

	def sort
	 @roster= @roster.sort.to_h
		@roster.sort_by do |item, names|
			names = names.sort_by! do |name|
				 name.downcase	
			end
		end
		return @roster
	end
end