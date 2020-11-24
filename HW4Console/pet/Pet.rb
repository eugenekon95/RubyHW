require "yaml"
require_relative "Animal.rb"

class Pet < Animal
  attr_accessor :health, :mood, :hunger, :sleeping, :stamina, :agility, :intelect, :purity, :user

  def initialize(animal, name, username)
    super(animal, name)
    @health = 10
    @mood = 10
    @hunger = 10
    @sleeping = 10
    @stamina = 10
    @agility = 10
    @intelect = 10
    @purity = 10
    @user = username
  end

  #----------user actions----------
  def feed
    p "You are feeding #{@name}"
    @hunger += rand(5)
    @health += rand (5)
    p "Characteristics after event : Hunger = #{@hunger}"
    save()
    pastTime()
  end

  def wash
    p "You are washing #{@name}"
    @purity += rand(5)
    @mood > 0 ? @mood -= rand(5) : @mood = 0
    p "Characteristics after event : Purity = #{@purity}  Mood: = #{@mood}"
    save()
    pastTime()
  end

  def train
    p "You are training #{@name}"
    @agility += rand(5)
    @intelect += rand(5)
    @stamina += rand(5)
    @hunger > 0 ? @hunger -= rand(5) : @hunger = 0
    @sleeping > 0 ? @sleeping -= rand(5) : @sleeping = 0
    @mood > 0 ? @mood -= rand(5) : @mood = 0
    @purity > 0 ? @purity -= rand(5) : @purity = 0
    @health > 0 ? @health -= rand(5) : @health = 0

    puts "Characteristics after event :
      Agility = #{@agility}  Mood: = #{@mood}  Intelect = #{@intelect}  Stamina: = #{@stamina}
      Hunger = #{@hunger}  Sleeping: = #{@sleeping} Purity = #{@purity}"
    save()
    pastTime()
  end

  def play
    p "You are playing with #{@name}"
    @mood += rand(5)
    @stamina > 0 ? @stamina -= rand(5) : @stamina = 0
    @hunger > 0 ? @hunger -= rand(5) : @hunger = 0
    @sleeping > 0 ? @sleeping -= rand(5) : @sleeping = 0

    puts "Characteristics after event :
      Hunger = #{@hunger}  Mood: = #{@mood}  Sleeping = #{@sleeping}  Stamina: = #{@stamina}"
    save()
    pastTime()
  end

  def sleep
    p "#{@name} is sleeping "
    @mood += rand(5)
    @stamina += rand(5)
    @hunger > 0 ? @hunger -= rand(5) : @hunger = 0
    @sleeping += rand(5)

    puts "Characteristics after event :
    Hunger = #{@hunger}  Mood: = #{@mood} Sleeping = #{@sleeping}  Stamina: = #{@stamina}"
    save()
    pastTime()
  end

  def walk
    p "#{@name} is walking "
    @stamina += rand(5)
    @hunger > 0 ? @hunger -= rand(5) : @hunger = 0
    @sleeping > 0 ? @sleeping -= rand(5) : @sleeping = 0
    @purity > 0 ? @purity -= rand(5) : @purity = 0
    @health > 0 ? @health -= rand(5) : @health = 0

    puts "Characteristics after event :
    Hunger = #{@hunger}  Purity: = #{@purity} Sleeping = #{@sleeping}  Stamina: = #{@stamina}"
    save()
    pastTime()
  end

  def search
    p "#{@name} is searching "
    @stamina > 0 ? @stamina -= rand(5) : @stamina = 0
    @intelect += rand(5)
    puts "Characteristics after event :
    Stamina = #{@stamina}  Intelect: = #{@intelect}"
    save()
    pastTime()
  end

  def status
    puts "      #{@animal}      #{@name}
        |health| = #{@health}   |hunger| = #{@hunger}       |purity| = #{@purity}     |agility| = #{@agility}
        |stamina| = #{@stamina}  |sleeping| = #{@sleeping}  |intelect| = #{@intelect}   |mood| = #{@mood}
        "
  end

  def spectate
    p "You spectating on #{@name}"
    randomEvent()
    save()
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

  def change_animal_type
    puts "What is new animal?"
    new_animal = gets.strip.downcase
    self.animal = new_animal
    save()
  end

  def change_animal_name
    puts "new name?"
    new_name = gets.strip.downcase
    self.name = new_name
    save()
  end

  def kill_pet
    puts "Your pet is dead"
    self.hunger = 0
    self.purity = 0
    self.stamina = 0
    self.health = 0
    puts "Game Over"
    exit
  end

  def reset_stats
    puts "Your pet stats is reset to defaults"
    self.hunger = 10
    self.purity = 10
    self.stamina = 10
    self.health = 10
    self.sleeping = 10
    self.agility = 10
    self.intelect = 10
    self.mood = 10
  end

  def change_pet_stats
    p "enter characteristic you want to change [health hunger mood purity stamina agility intelect sleeping]"
    characteristic = gets.chomp
    case characteristic
    when 'hunger'
      p "enter new hunger value"
      value = gets.strip.to_i
      self.hunger = value
      p "Hunger value changed"

    when 'purity'
      p "enter new purity value"
      value = gets.strip.to_i
      self.purity = value
      p "Purity value changed"
    when 'mood'
      p "enter new mood value"
      value = gets.strip.to_i
      self.mood = value
      p "Mood value changed"
    when 'stamina'
      p "enter new stamina value"
      value = gets.strip.to_i
      self.stamina = value
      p "Stamina value changed"
    when 'sleeping'
      p "enter new sleeping value"
      value = gets.strip.to_i
      self.sleeping = value
      p "Sleeping value changed"
    when 'agility'
      p "enter new agility value"
      value = gets.strip.to_i
      self.agility = value
      p "Agility value changed"
    when 'intelect'
      p "enter new intelect value"
      value = gets.strip.to_i
      self.intelect = value
      p "Intelect value changed"
    when 'health'
      p "enter new health value"
      value = gets.strip.to_i
      self.health = value
      p "Health value changed"
    else
      p "nothing changes"
    end
  end

  #----------private methods----------

  private

  def pastTime
    hours = rand(5)
    if hours == 0
      p "Past less than an hour"
    else
      p "Past #{hours} hours"
    end

    @hunger > 0 ? @hunger -= rand(5) : @hunger = 0
    @sleeping > 0 ? @sleeping -= rand(5) : @sleeping = 0
    @purity > 0 ? @purity -= rand(5) : @purity = 0
    status()
    checkPet()
  end

  def randomEvent
    event = rand(5)
    case event
    when event == 1
      p "Rain is started #{@name} is very upset and running into pethouse"
      @sleeping > 0 ? @sleeping -= rand(10) : @sleeping = 0
      @purity > 0 ? @purity -= rand(10) : @purity = 0
      @mood > 0 ? @mood -= rand(10) : @mood = 0

    when event == 2
      p "#{@name} broke your shoes and hide"
      @sleeping > 0 ? @sleeping -= rand(10) : @sleeping = 0
      @purity > 0 ? @purity -= rand(10) : @purity = 0
      @mood += rand(20)

    when event == 3
      p "#{name} found old broken pet toy"
      @sleeping > 0 ? @sleeping -= rand(10) : @sleeping = 0
      @purity > 0 ? @purity -= rand(10) : @purity = 0
      @mood += rand(10)

    when event == 4
      p "#{name} trying to bite you"
      @mood > 0 ? @mood -= rand(10) : @mood = 0
      @intelect > 0 ? @intelect -= rand(10) : @intelect = 0

    when event == 5
      p "#{name} going into your house"
      @mood += rand(10)
      @intelect += rand(10)

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

  def dirty?
    @purity <= 1
  end

  def runnaway?
    if @purity <= 0 && @hunger <= 0
    end
  end

  def petIsDead
    if @hunger <= 0 && @health <= 0 && @stamina <= 0
      puts "I`m dying goodbye"
      puts "Game Over"
      exit

    end
  end

  def checkPet()
    puts("Feed me") if hungry?
    puts("Play with me!") if bored?
    puts("Freedom") if runnaway?
    puts("I need rest!") if sleepy?
    puts("I need shower!") if dirty?
    petIsDead()
  end

  def save
    yaml = YAML.dump(self)
    File.open("./database/pets.yml", 'w') { |file| file.puts(yaml) }
  end
end
