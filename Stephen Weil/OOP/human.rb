class Human
    def initialize
        @strength = 3
        @stealth = 3
        @intelligence = 3
        @health = 100
    end

    attr_accessor :health

    def attack(target)
        if (target.class.ancestors.include? Human or target.class == Human)
            target.health -= 10
            p "You attacked the #{target.class}! They now have #{target.health} health left."
        else
            p "What is wrong with you? Pick on your own species!"
        end
        return self
    end
end

=begin
dude = Human.new
otha_dude = Human.new

dude.attack otha_dude
p otha_dude.health

dude.attack 5
=end
