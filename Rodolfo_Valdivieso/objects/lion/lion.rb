
require_relative 'mammal'

class Lion < Mammal

  def initialize
    self.health = 170
  end

  def fly
  	self.health = self.health - 10
  	self
  end

  def attack_town
  	self.health = self.health - 50
  	self
  end

  def eat_humans
  	self.health = self.health + 20
    self
  end


  def display_health
    super
    puts "I'm a LIONNNNNNN....."
  end

end

lion1 = Lion.new
lion1.display_health
lion1.attack_town.attack_town.attack_town.eat_humans.eat_humans.fly.fly.display_health
