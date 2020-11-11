class Animal
  attr_accessor :animal, :name

  def initialize(animal, name)
    @animal = animal
    @name = name

  
  end
  def voice
    case @animal
    when "dog" 
      p "bark"
    when "cat" 
       p "meow"
    when "raven" 
       p "croak"
    when "monkey" 
       p "whoop"

    else  p"hello"
    end
  end
end

class Pet < Animal
  attr_accessor :health, :mood, :hunger, :sleeping, :stamina, :agility, :intelect, :purity

  def initialize(animal, name, health, mood, hunger, sleeping, stamina, agility, intelect, purity)
    super(animal, name)
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
    @hunger = @hunger + rand(6)
    pastTime()

    return p "Characteristics after event : Hunger = #{@hunger}"
  end

  def wash
    p "You are washing #{@name}"
    @purity = @purity + rand(6)
    @mood = @mood + rand(6)
    pastTime()

    return p "Characteristics after event : Purity = #{@purity}  Mood: = #{@mood}"
  end

  def train
    p "You are training #{@name}"
    @agility = @agility + rand(5)
    @intelect = @intelect + rand(5)
    @stamina = @stamina + rand(10)
    @hunger = @hunger - rand(15)
    @sleeping = @sleeping - rand(5)
    @mood = @mood - rand(5)
    @purity = @purity - rand(5)
    pastTime()

    return puts "Characteristics after event :

    Agility = #{@agility}  Mood: = #{@mood}  Intelect = #{@intelect}  Stamina: = #{@stamina}

    Hunger = #{@hunger}  Sleeping: = #{@sleeping} Purity = #{@purity}"
  end

  def play
    p "You are playing with #{@name}"
    @mood = @mood + rand(5)
    @stamina = @stamina - rand(5)
    @hunger = @hunger - rand(5)
    @sleeping = @sleeping - rand(5)
    pastTime()

    return puts "Characteristics after event :

    Hunger = #{@hunger}  Mood: = #{@mood}  Sleeping = #{@sleeping}  Stamina: = #{@stamina}"
  end

  def sleep
    p "#{@name} is sleeping "
    @mood = @mood + rand(5)
    @stamina = @stamina += rand(5)
    @hunger = @hunger - rand(5)
    @sleeping = @sleeping + rand(15)
    pastTime()

    return puts "Characteristics after event :

    Hunger = #{@hunger}  Mood: = #{@mood} Sleeping = #{@sleeping}  Stamina: = #{@stamina}"
  end

  def walk
    p "#{@name} is walking "
    @stamina = @stamina + rand(5)
    @hunger = @hunger - rand(5)
    @sleeping = @sleeping - rand(5)
    @purity = @purity - rand(5)
    pastTime()
    return puts "Characteristics after event :

    Hunger = #{@hunger}  Purity: = #{@purity} Sleeping = #{@sleeping}  Stamina: = #{@stamina}"
  end

  def search
    p "#{@name} is searching "
    @stamina = @stamina - rand(5)
    @intelect = @intelect + rand(5)
    pastTime()
    return puts "Characteristics after event :
    Stamina = #{@stamina}  Intelect: = #{@intelect}"
  end

  def status
    puts " #{@name}
      |health| = #{@health}   |hunger| = #{@hunger}       |purity| = #{@purity}     |agility| = #{@purity}
      |stamina| = #{@stamina}  |sleeping| = #{@sleeping}  |intelect| = #{@intelect}   |mood| = #{@mood}
      "
  end

  def spectate
    p "You spectating on #{@name}"
    randomEvent()
    pastTime()
  end

  

  def help
    puts "Tamagotchi MY PET methods"
    p "Feed: Feeding the animal increases hunger property on random value"
    p "Wash: Washing the animal increases purity property decreases mood on random value"
    p "Train: Training the animal increases agility, intelect properties dicreases stamina hunger sleeping mood purity on random value"
    p "Play: Playing with animal increases mood property decreases stamina hunger sleeping on random value"
    p "Sleep: Animal sleep increases mood stamina sleeping decreases hunger on random value"
    p "Walk: Animal walking decreases stamina hunger sleeping purity on random value"
    p "Search: Animal train searching skill increases intelect decreases stamina on random value"
    p "Status: Show animal status"
    p "Spectate: Just spectating on animal"
  end

  #----------private methods----------
  private

  def pastTime
    hours = rand(6)
    @hunger = @hunger - rand(2)
    @sleeping = @sleeping - rand(2)
    @purity = @purity - rand(2)
    p "Past #{hours} hours"
    status()
    checkPet()
  end

  def randomEvent
    event = rand(5)
    case event
    when event == 1
      p "Rain is started #{@name} is very upset and running into pethouse"
      @purity = @purity - rand(10)
      @sleeping = @sleeping - rand(10)
      @mood = @mood - rand(10)

    when event == 2
      p "#{@name} broke your shoes and hide"
      @purity = @purity - rand(10)
      @sleeping = @sleeping - rand(10)
      @mood = @mood + rand(20)

    when event == 3
      p "#{name} found old broken pet toy"
      @purity = @purity - rand(20)
      @sleeping = @sleeping - rand(20)
      @mood = @mood + rand(10)
    when event == 4
      p "#{name} trying to bite you"
      @mood = @mood - rand(10)
      @intelect = @intelect - rand(10)
    when event == 5
      p "#{name} going into your house"
      @mood = @mood + rand(10)
      @intelect = @intelect + rand(10)

    else
      p "Nothing happens"
    end
  end

  def hungry?
    @hunger <= 1
  end

  def sleepy?
    @sleeping <= 1
  end

  def bored?
    @mood <= 1
  end

  def tired?
    @stamina <= 1
  end

  def runnaway?
    if @purity || @hunger <= 0
    end
  end

  def petIsDead
    if @hunger < 0 && @purity < 0 && stamina < 0
      puts "I`m dying goodbye"
      puts "Game Over"
      exit

    end
  end

  def checkPet() # todo
    puts("Feed me") if hungry?
    puts("Play with me!") if bored?
    puts("Freedom") if runnaway?
    puts("I need rest!") if sleepy?
    petIsDead()
  end
end

def startGame
  p "MY PET GAME"
  p "Choose Animal type"
  animalType = gets.chomp.downcase
  p "Choose Animal name"
  animalName = gets.chomp.downcase
  pet = Pet.new(animalType, animalName, 10, 10, 10, 10, 10, 10, 10, 10)
  p" #{animalType} #{animalName} was born"

  while true
    puts "
  Choose action
 1.feed             5.sleep
 2.wash             6.walk
 3.train            7.search
 4.play             8.status
 9.spectate         10.voice
 11.help            12.exit
 13.clear
 Comand: "
    command = gets.chomp()
    case command
    when "feed"
      pet.feed
    when "wash"
      pet.wash
    when "train"
      pet.train
    when "play"
      pet.play
    when "sleep"
      pet.sleep
    when "walk"
      pet.walk
    when "search"
      pet.search
    when "status"
      pet.status
    when "spectate"
      pet.spectate
    when "voice"
      pet.voice
    when "help"
      pet.help
    when "clear"
      system "cls"
    when "exit"
      exit

    else
      puts " Hint typo string command example feed"
    end

  end
end

startGame()
