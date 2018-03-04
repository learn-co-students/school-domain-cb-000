# code here!

class School
  # attr_reader :roster

  def initialize(name)
    @name = name
    @roster = {}
    end

    def roster
      @roster
    end

    def add_student(name, grade)
      @roster[grade] = [] if !@roster.has_key? grade
      @roster[grade] << name
    end

    def grade(num)
      @roster[num]
    end

    def sort
      # @roster.each do |k, v|
      #   puts
      # end
      @roster.each_value { |v| v.sort! }
    end

end
