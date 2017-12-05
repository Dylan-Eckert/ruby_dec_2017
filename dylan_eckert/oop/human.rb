class Human
  attr_accessor :strength, :int, :health, :stealth
  def initialize
    @strength = 3
    @int = 3
    @stealth = 3
    @health = 100
  end
  def attack(obj)
    if obj.class.ancestors.include?(Human)
      obj.health -= 10
      true
    else
      false
    end
  end
end

dylan = Human.new
p "dylan: #{dylan.health}"
badguy = Human.new
p "badguy: #{badguy.health}"
dylan.attack(badguy)
p "Dylan attacks badguy!"
p "badguy: #{badguy.health}"
