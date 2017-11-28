#Assignment Human
class Human
	attr_accessor :strength, :intelligence, :stealth, :health

	def initialize
		@strength = 3
		@intelligence = 3
		@stealth = 3 
		@health = 100
		self
	end

	def attack(object)
		#p object.class
		#p object.class.ancestors
		if object.kind_of?(Human)
			object.health -= 5
			puts "Human attacked current health: " + object.health.to_s 
		else
			puts "What you are trying to attack is not a HUMAN!!!!"
		end
		self
	end
end


human1 = Human.new
human2 = Human.new

human1.attack(human2).attack(human2).attack(human2).attack(human2)
human1.attack(1)

human1.attack("DOG")