class School
    attr_reader :roster
    def initialize(school)
        @school = school
        @roster = {}
    end
    
    def add_student(name, grade)
        # if @roster[grade]
        #     @roster[grade] << name
        # else
        #     @roster[grade] = [name]
        # end

        @roster[grade] ||= []
        @roster[grade] << name
    end

    def grade(grade)
        @roster[grade]
    end

    def sort
        result = {}
        @roster.each do |grade, students|
            result[grade] = students.sort
        end
        result
    end
end