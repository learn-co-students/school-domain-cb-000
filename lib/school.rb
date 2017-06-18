class School
  attr_accessor :school_name, :roster

  def initialize( school_name )
    @roster = {}
#    school_name = school_name
  end

  def add_student( name, grade )
    #@name = name
    #@grade = grade
    #puts name
    #puts grade
    roster[grade] ||= []
    roster[grade] << name
  end

  def grade( grade )

    roster[grade]
  end

  def sort

    mySortedHash = {}
    roster.each do | grade, studentNames |
      mySortedHash[grade] = studentNames.sort
    end
    mySortedHash
  end

end
