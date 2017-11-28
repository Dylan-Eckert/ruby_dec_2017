#Assignment Project Ruby OOP

class Project
  # your code here
  attr_accessor :name, :desc

  def initialize(name2, desc)
  	@name = name2
  	@desc = desc
  end

  def elevator_pitch
  	print @name , ", " ,@desc , "\n"
  end
end
project1 = Project.new("Project 1", "Description 1")
puts project1.name # => "Project 1"
project1.elevator_pitch  # => "Project 1, Description 1"