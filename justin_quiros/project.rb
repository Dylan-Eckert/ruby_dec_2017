class Project
	def initialize(name, description)
		@name = name
		@description = description
	end
	def elevator_pitch
		puts "Project name: #{@name}"
		puts "Project description: #{@description}"
	end
	def name
		puts "#{@name}"
	end
end
project1 = Project.new("Cool Project", "This project is really cool")
project1.name
project1.elevator_pitch