class Mammal
    def initialize
        @health = 150
    end
    attr_accessor :health
    def display_health
        puts "Health is #{@health}"
        return self
    end
end
