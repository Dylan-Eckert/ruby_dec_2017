require_relative 'human'
class Ninja < Human
    def initialize
        super
        @stealth = 175
    end

    def steal(target)
        if (target.class == Human or target.class.ancestors.include? Human)
            @health += 10
            p "You stole from the #{target.class}. You now have #{@health} health!"
        else
            p "Jeez dude, you can't just be stealin' from a #{target.class}."
        end
        return self
    end

    def get_away
        @health -= 15
        p "You escaped danger, but it cost you! You now have #{@health} health."
        return self
    end
end

kemosabi = Ninja.new
innocent_bystander = Human.new

kemosabi.steal innocent_bystander
kemosabi.steal [1,2,3]
kemosabi.get_away