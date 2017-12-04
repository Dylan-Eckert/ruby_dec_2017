require_relative 'human'
class Samurai < Human
    @@samurai_count = 0
    def initialize
        super
        @health = 200
        @@samurai_count += 1
    end

    def death_blow(target)
        if (target.class == Human or target.class.ancestors.include? Human)
            target.health = 0
            p "You executed the DEATH BLOW! The #{target.class} now has #{target.health} health. RIP!"
        else
            p "I mean, I guess I hate #{target.class} too, but it doesn't mean you can kill 'em...'"
        end
        return self
    end

    def meditate
        @health = 200
        p "You centered your body and mind. You are now restored back to #{@health} health!"
        return self
    end

    def how_many
        p "You are (probably) not alone. There are #{@@samurai_count} total Samurai!"
        return self
    end
end

not_the_last_samurai = Samurai.new
also_not_the_last_samurai = Samurai.new

innocent_bystander = Human.new

not_the_last_samurai.attack innocent_bystander
innocent_bystander.attack also_not_the_last_samurai
also_not_the_last_samurai.how_many.death_blow innocent_bystander
also_not_the_last_samurai.meditate