class Human
	attr_accessor :health
	def initialize
		@strength = 3
		@stealth = 3
		@intelligence = 3
		@health = 100
	end
	def attack(object)
		if object.kind_of? (Human)
			object.health -= 5
			self
		else
			puts "You can not attack a non-human!"
		end
	end
	def display_info
		puts "Strength: #{@strength}"
		puts "Stealth: #{@stealth}"
		puts "Intelligence: #{@intelligence}"
		puts "Health: #{@health}"
	end
end


corie = Human.new
mike = Human.new
joe = 12

p corie.attack(mike)
puts mike.display_info

