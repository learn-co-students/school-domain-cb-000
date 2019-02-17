class School


    def initialize(name)
        @name = name
        @roster = {}
    end

    def add_student(name, grade)
        if @roster.has_key?(grade)
            @roster[grade] << name
        else
            @roster[grade] = []
            @roster[grade] << name
        end
    end

    def grade(grade)
        if @roster.has_key?(grade)
             @roster[grade]
        end
    end

    def sort


        sorted = {}
        #order of keys is not important as hashes
        #are unordered by nature so just sort
        #the students within the grade, not the 
        #grades

        #also, sort function returns an array
        #so you cannot sort on the roster as the
        #result of a roster sort will be an array
        #and not a hash
        @roster.each do |grade, students|
            puts("Working on grade:  #{grade}");
          sorted[grade] = students.sort
        end
        puts("Result:  #{sorted}")
        sorted
    end

    def roster
        return @roster
    end
end
