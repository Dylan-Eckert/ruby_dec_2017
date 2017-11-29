
class Samurai < Human
@@no_of_sam = 0
	def initialize
		super
		@health = 200
		@@no_of_sam += 1
	end
	def death_blow(object)
		if object.class.ancestors.include?(Human)
			object.health = 0
			self
		else
			puts "You can not attack a non-human!"
		end
	end	
	def meditate
		@health = 200
	end
	def how_many
		puts "There are currently #{@@no_of_sam} samurais out there."
	end
end
