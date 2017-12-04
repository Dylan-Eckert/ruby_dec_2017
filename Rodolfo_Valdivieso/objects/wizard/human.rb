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
require_relative 'ninja'
require_relative 'samurai'
require_relative 'wizard'

human1 = Human.new
ninja1 = Ninja.new
wizard1 = Wizard.new
samurai1 = Samurai.new
samurai2 = Samurai.new

p ninja1.steal(human1).health
p human1.health
samurai1.death_blow(human1)
wizard1.fireball(samurai1)
p samurai1.health
p human1.health

samurai1.how_many
