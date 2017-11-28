
# require_relative 'human'

class Wizard < Human
	def initialize
		super
		self.intelligence = 25
		self.health = 50
		self
	end

	def heal
		self.health += 10
		self
	end

	def fireball(object)
		object.health -= 20
		self
	end

end