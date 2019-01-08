class School
    attr_accessor :student_name, :grade_level
    attr_reader :school_name, :roster

    def initialize(school_name)
        @school_name = school_name
        @roster = Hash.new{|hash,key| hash[key] = [] }
    end
    

    def add_student(student_name, grade_level)
        @roster[grade_level] << student_name
    
    end
    
    def grade(number)
        @roster[number]
    end

    def sort
        @roster.collect do |grade_level, student_name|
            student_name.sort!
        end
        
        @roster.sort_by{|grade_level, student_name|student_name}.to_h
    end
end



