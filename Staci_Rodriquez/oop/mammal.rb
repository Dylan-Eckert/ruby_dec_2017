class Mammal
	attr_reader :health

	def initialize
	@health = 150
		self
	end

	def display_health
		puts @health
	end
end