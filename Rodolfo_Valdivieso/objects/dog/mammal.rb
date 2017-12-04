class Mammal

  attr_accessor :health, :type
  def initialize
  	@health = 150
    @type   = ""
  end

  def display_health
  	puts "My Current Health is: " + self.health.to_s
    self
  end
end




