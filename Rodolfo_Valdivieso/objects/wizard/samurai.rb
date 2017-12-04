
#require_relative 'human'

class Samurai < Human

	@@count = 0
	def initialize
		super
		self.health = 200
		@@count += 1
		self
	end

	def death_blow(object)
		object.health = 0
		self
	end

	def meditate
		self.health = 200
		self
	end

	def how_many
		puts "There are: " + @@count.to_s + " Samurais out there"
	end

end