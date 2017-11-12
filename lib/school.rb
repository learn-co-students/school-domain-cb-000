class School
  attr_accessor :name, :roster
  
  def initialize(name)
    # initialize with a name
    @name = name

    # has an empty roster when initialized
    @roster = {}
  end
end
