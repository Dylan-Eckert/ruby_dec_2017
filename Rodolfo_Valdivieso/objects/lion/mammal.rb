class Mammal
  attr_accessor :health

  def initialize
  	self.health = 150
  end

  def display_health
  	puts "My Current Health is: " + self.health.to_s
    self
  end
end
