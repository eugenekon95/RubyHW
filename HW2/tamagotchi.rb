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
    pastTime()
    return p"Characteristics after event : Hunger = #{hunger}"
    end
    
    def wash
    p "You are washing #{@name}"
    @purity += rand(6)
    @mood -= rand(6)
    pastTime()
    return p"Characteristics after event : Purity = #{purity}  Mood: = #{mood}" 
    end
    
    def train
    p "You are training #{@name}"
    @agility += rand(6)
    @intelect += rand(6)
    @stamina -= rand(10)
    @hunger -= rand(10)
    @sleeping -= rand(6)
    @mood -= rand(6)
    @purity -= rand(6)
    pastTime()

    return puts"Characteristics after event : 
    Agility = #{@agility}  Mood: = #{@mood}
    
    Intelect = #{@intelect}  Stamina: = #{@stamina}
    
    hunger = #{@hunger}  Sleeping: = #{@sleeping}
        Purity = #{@purity}"  
    end
    
    def play
    p "You are playing with #{@name}"
    @mood += rand(6)
    @stamina -= rand(10)
    @hunger -= rand(10)
    @sleeping -= rand(6)
    pastTime()
    end

    def sleep
    p "#{@name} is sleeping "
    @mood += rand(6)
    @stamina += rand(10)
    @hunger += rand(10)
    @sleeping += rand(6)
    pastTime()

    return puts"Characteristics after event : 
    Hunger = #{@hunger}  Mood: = #{@mood}
    
    Sleeping = #{@sleeping}  Stamina: = #{@stamina}"
    end

    def walk
    p "#{@name} is walking "
    @stamina += rand(10)
    @hunger += rand(10)
    @sleeping -= rand(6)
    @purity -= rand(6)
    pastTime()

    return puts"Characteristics after event : 
    Hunger = #{@hunger}  Purity: = #{@purity}
    
    Sleeping = #{@sleeping}  Stamina: = #{@stamina}"
    end

    def search
    p "#{@name} is searching "
    @stamina -= rand(10)
    @intelect += rand(6)
    pastTime()
    return puts"Characteristics after event : 
    Stamina = #{@stamina}  Intelect: = #{@intelect}"
    end
    
    def status
      puts " #{@name}  status
      
      -----------------------------------------------------------------------------------------------------
      |health| = #{@health}   |hunger| = #{@hunger}      |purity| = #{@purity}       |agility| = #{@purity}        
      |stamina| = #{@stamina} |sleeping| = #{@sleeping}  |intelect| = #{@intelect}   |mood| = #{@mood}
      ----------------------------------------------------------------------------------------------------- "
      
    end

    def spectate
      p "You spectating on #{@name}"
      randomEvent()
      pastTime()
    end

#----------private methods----------
    private
    def pastTime
      hours = rand(6)
      @hunger -= rand(10)
      @sleeping -= rand(6)
      @purity -= rand(6)
      return p "Past #{hours} hours"
    end

    def randomEvent
      event = rand(5)
      case event
      when event == 1
        p "Rain is started #{@name} is very upset and running into pethouse"
        @purity -= rand(10)
        @sleeping -= rand(10)
        @mood -= rand(10)

      when event == 2
        p "#{name} broke your shoes and hide"
        @purity -= rand(10)
        @sleeping -= rand(10)
        @mood += rand(10)
        
      when event == 3
        p "#{name} found old broken pet toy"
        @purity -= rand(20)
        @sleeping -= rand(20)
        @mood += rand(20)

      else
        p "Nothing happens"
      end
      
    end

end


julia = Pet.new("cat", "Julia", 10, 10, 10, 10, 10, 10, 10, 10)


julia.search
julia.status







      
      
