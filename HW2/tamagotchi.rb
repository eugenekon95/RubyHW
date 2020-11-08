class Animal
  attr_accessor :animal, :name
  def initialize(animal, name)
    @animal = animal
    @name = name

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
  end
end




class Pet < Animal
  attr_accessor :health, :mood, :hunger, :sleeping, :stamina, :agility, :intelect, :purity
  
  def initialize(animal, name, health, mood, hunger, sleeping, stamina, agility, intelect, purity)
    super(animal,name)
    @health = health
    @mood = mood
    @hunger = hunger
    @sleeping = sleeping
    @stamina = stamina
    @agility = agility
    @intelect = intelect
    @purity = purity

   
  end

  #----------user actions----------
  def feed
    p "You are feeding #{@name}"
    @hunger += rand(6)
    end
    
    def wash
    p "You are washing #{@name}"
    @purity += rand(6)
    @mood -= rand(6)
    end
    
    def train
    p "You are training #{@name}"
    @agility += rand(6)
    @intelect += rand(6)
    @power += rand(6)
    @stamina -= rand(10)
    @hunger -= rand(10)
    @sleeping -= rand(6)
    @mood -= rand(6)
    end
    
    def play
    p "You are playing with #{@name}"
    @mood += rand(6)
    @stamina -= rand(10)
    @hunger -= rand(10)
    @sleeping -= rand(6)
    
    end

    def sleep
    @mood += rand(6)
    @stamina += rand(10)
    @hunger += rand(10)
    @sleeping += rand(6)
    end

    def walk
    @stamina += rand(10)
    @hunger += rand(10)
    @sleeping -= rand(6)
    end

    def search
    @stamina -= rand(10)
    @intelect += rand(6)
    end
    
    def status
      puts " #{@name}  status
      
      -----------------------------------------------------------------------------------------------------
      |health| = #{@health}   |hunger| = #{@hunger}      |purity| = #{@purity}       |agility| = #{@purity}        
      |stamina| = #{@stamina} |sleeping| = #{@sleeping}  |intelect| = #{@intelect}   |mood| = #{@mood}
      ----------------------------------------------------------------------------------------------------- "
      
    end

    def spectate
      #randomEvent()
      #pastTime()
    end


end


julia = Pet.new("cat", "Julia", 10, 10, 10, 10, 10, 10, 10, 10)
p julia.feed
p julia.status





      
      
