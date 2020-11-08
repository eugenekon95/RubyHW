class Pet
    attr_accessor :animal, :name, :health, :satiety, :mood, :stamina, :power, :sleepiness, :intelect, :purity, :agility
    def initialize(animal = "dog", name = "Black",  health = 15, satiety = 15, mood = 15, stamina = 15, power = 15, sleepiness = 15, intelect = 5, purity = 5, agility = 5)
        @animal = animal
        @name = name
        @health = health
        @satiety = satiety
        @mood = mood
        @stamina = stamina
        @power = power
        @sleepiness = sleepiness
        @intelect = intelect
        @purity = purity
        @agility = agility
       

    end
    def voice
        case @animal
        when 'dog'
          'bark'
        when 'cat'
          'meow'
        when 'raven'
          'croak'
        when'monkey'
            'whoop'
        
        else 'hello'
        end
        end
        
    #----------user actions----------

    def feed
    p "You are feeding #{self.name}"
    @satiety += rand(6)
    end
    def wash
    p "You are washing #{self.name}"
    @purity += rand(6)
        
    end

    def train
    p "You are training #{self.name}"
    @agility += rand(6)
    @intelect += rand(6)
    @power += rand(6)
    @stamina -= rand(10)
    @satiety -= rand(10)
    @sleepiness -= rand(6)
    @mood -= rand(6)
    end

    def play
    @mood += rand(6)
    @stamina -= rand(10)
    @satiety -= rand(10)
    @sleepiness -= rand(6)
    @power -= rand(10)
        
    end
    def sleep
        @mood += rand(6)
        @stamina += rand(10)
        @satiety += rand(10)
        @sleepiness += rand(6)
        @power += rand(10) 
    end

    def walk
        
    end

    def catch
        
    end
    def search
        
    end

    def bite
        
    end

    def status
        
    end

   end
julia = Pet.new("dog", "Julia")
p julia
      
      
