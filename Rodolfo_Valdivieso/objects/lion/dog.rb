
require_relative 'mammal'

class Dog < Mammal
  
  def pet
  	self.health = self.health + 5
  	self
  end

  def walk
  	self.health = self.health - 1
  	self
  end

  def run
  	self.health = self.health - 10
  	self
  end
end
