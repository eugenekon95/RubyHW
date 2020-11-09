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
    checkPet()
    return p"Characteristics after event : Hunger = #{hunger}"
    end
    
    def wash
    p "You are washing #{@name}"
    @purity += rand(6)
    @mood -= rand(6)
    pastTime()
    checkPet()
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
    checkPet()

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
    checkPet()
    return puts"Characteristics after event : 
    Hunger = #{@hunger}  Mood: = #{@mood}
    
    Sleeping = #{@sleeping}  Stamina: = #{@stamina}"
    end

    def sleep
    p "#{@name} is sleeping "
    @mood += rand(6)
    @stamina += rand(10)
    @hunger += rand(10)
    @sleeping += rand(6)
    pastTime()
    checkPet()

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
    checkPet()
    return puts"Characteristics after event : 
    Stamina = #{@stamina}  Intelect: = #{@intelect}"

    end
    
    def status
      puts " #{@name} 
      -----------------------------------------------------------------------------------------------------
      |health| = #{@health}   |hunger| = #{@hunger}    |purity| = #{@purity}     |agility| = #{@purity}        
      |stamina| = #{@stamina}  |sleeping| = #{@sleeping}  |intelect| = #{@intelect}   |mood| = #{@mood}
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

    def hungry?
      @hunger == 1
    end

    def sleepy?
      @sleeping == 1
    end
    
    def bored?
      @mood == 1
    end

    def tired?
      @stamina == 1
    end

    def runnaway?
     if  @purity || @hunger == 0
       
     end
      
      
    end

    def petIsDead
     if @hunger == 0 || @purity == 0 || stamina == 0
      puts "I`m dying goodbye"
    end
    end

    def checkPet() # todo
      puts('Feed me') if hungry?
      puts('Play with me!') if bored?
      puts('Freedom') if runnaway?
      puts('I need rest!') if sleepy?
      petIsDead()
        
      
    end

end

def startGame
  puts"--------------------"
  p "MY PET GAME"
  p "Choose Animal type"
  animalType = gets.chomp
  p "Choose Animal name"
  animalName = gets.chomp
  pet = Pet.new(animalType, animalName, 10, 10, 10, 10, 10, 10, 10, 10)

while true
  puts "---------------------------
  Choose action
 1.feed             5.sleep
 2.wash             6.walk
 3.train            7.search
 4.play             8.status
 9.spectate         10.exit
 Comand: "
   command = gets.chomp().to_s
    case command
    when 'feed'
      pet.feed
    when 'wash'
      pet.wash
    when 'train'
      pet.train
    when 'play'
      pet.play
    when 'sleep'
      pet.sleep
    when 'walk'
      pet.walk
    when 'search'
      pet.search
    when 'status'
      pet.status
     when 'spectate'
       pet.spectate
     when 'exit'
      exit
      
    else
      puts " Try Again "    
    end

end
  
   
  
    
   
   
   
  

  puts"--------------------"
  
end

startGame()








      
      
