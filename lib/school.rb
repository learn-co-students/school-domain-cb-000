# code here!

class School
  attr_accessor :school, :roster

  def initialize (school)
    @school=school
    @roster={}
  end

  def add_student(student,grade)
    #@roster[grade]=[]
    if @roster.keys.none? {|num| num==grade}
      #Don't know if next line is necessary.
      #The lab instructions seem to say so.
      #but code works without it.
      #@roster[grade]=[]
      @roster[grade]=[student]
    else
      @roster[grade]<<student
    end
  end

  def grade(grade)
    @roster[grade]#.values.flatten
    #student_array=[]
    #student_array=@roster.collect do |num,student|
      #if num===grade
        #student_array<<student
        #student
      #end
    #end
    #student_array
  end

  def sort
    @roster.each do |num,name|
      #num=num.sort {|a,b| a<=>b}
      #name=name.sort {|a,b| a<=>b}
      name.sort!
    end
  end
end
