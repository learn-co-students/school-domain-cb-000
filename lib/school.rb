class School
	attr_accessor :roster
	attr_reader :name

	def initialize(name)
    	@name = name
    	@roster = {}
    end

  	def add_student(name, grade)
  		if(@roster.include?(grade)  == false)
  			@roster[grade] = []
  			@roster[grade] << name
  		else
  			@roster[grade] << name
  		end
  	end

  	def grade(grade)
  		@roster[grade]
  	end
	
	def sort
		@roster.each do |key, value|
			@roster[key] = value.sort{ |a, b| a[0]<=>b[0]}
		end
	end
end

