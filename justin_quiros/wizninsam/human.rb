
class Human
	attr_accessor :strength, :intelligence, :stealth, :health
	def initialize
		@strength = 3
		@stealth = 3
		@intelligence = 3
		@health = 100
	end
	def attack(object)
		if object.class.ancestors.include?(Human)
			object.health -= 10
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

require_relative "ninja"
require_relative "wizard"
require_relative "samurai"

sam = Samurai.new
nin = Ninja.new
wiz = Wizard.new
joe = 0

