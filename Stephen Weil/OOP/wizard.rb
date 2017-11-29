require_relative 'human'
class Wizard < Human
    def initialize
        super
        @health = 50
        @intelligence = 50
    end

    def heal
        @health += 10
        return self
    end

    def fireball(target)
        if (target.class.ancestors.include? Human or target.class == Human)
            target.health -= 20
            p "You cast a fireball on the #{target.class}! They now have #{target.health} health left."
        else
            p "What is wrong with you? Pick on your own species! You can't just go attacking a #{target.class}..."
        end
        return self
    end
end

gandalf = Wizard.new
innocent_bystander = Human.new
sauron = Wizard.new

gandalf.fireball innocent_bystander
gandalf.fireball "u attakin strings now?"
gandalf.fireball sauron