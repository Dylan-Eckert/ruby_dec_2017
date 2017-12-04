
# require_relative 'human'

class Ninja < Human
	def initialize
		super
		self.stealth = 175
		self
	end

	def steal(object)
		self.health += 10
		object.health -= 10
		self
	end

	def get_away
		self.health -= 15
		self
	end
end