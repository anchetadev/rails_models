class Human
    attr_accessor :health, :stealth, :strength, :intelligence
    @@samurai_count = 0
    def initialize
        @health = 100
        @strength = 3
        @intelligence = 3
        @stealth = 3
        
    end
    def attack(obj)
        if obj.class.ancestors.include?(Human)
            obj.health -=10
            true
        else 
            false
        end
    end
end
class Wizard < Human
    def initialize
        @health = 50
        @intelligence = 25
    end
    def heal 
        @health += 10
        self
    end
    def fireball(obj)
        if obj.class.ancestors.include?(Human)
            obj.health -=20
            true
        else
            false
        end
    end
    def show_health
        puts @health
    end
end
class Ninja < Human
    def initialize
        @stealth = 175
    end
    def attack
        if obj.class.ancestors.include?(Human)
            obj.health -=10
            @health +=10
            true
        else
            false
        end
    end
    def get_away 
        @health -= 15
    end
    def show_health
        puts @health
    end
end

class Samurai < Human
    def initialize
        @health = 200
        @@samurai_count +=1
    end
    def death_blow(obj)
        if obj.class.ancestors.include?(Human)
            obj.health =0
            true
        else
            false
        end
        self
    end
    def meditate
        @health = 200
        self
    end
    def how_many
        puts "#{@@samurai_count}"
    end
end

ninja1=Ninja.new
wizard1 = Wizard.new
Samurai.new.death_blow(wizard1).how_many
wizard1.show_health
wizard1.heal.show_health
  