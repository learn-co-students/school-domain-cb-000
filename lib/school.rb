# code here!
class School

    def initialize(name)
        @name = name
        @roster = {}
    end

    def add_student(name, grade)
        @roster[grade] = [] if !roster.keys.include?(grade)
        @roster[grade] << name
    end

    def grade(grade)
        @roster[grade]
    end

    def roster
        @roster
    end

    def sort
        sorted_roster = {}
        @roster.each {|key, value| sorted_roster[key] = value.sort}
        sorted_roster
    end

end
