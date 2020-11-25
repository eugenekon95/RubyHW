class Superadmin < Admin
  attr_accessor :username

  def initialize(username = "superadmin", password = "nimdarepus")
    @username = username
    @password = password
    @role = 'superadmin'
  end

  def change_username
    puts "new username?"
    new_username = gets.strip.downcase
    self.username = new_username
    p "Username  changed"
  end

  def kill_pet
    puts "Your pet is dead"
    @pet.hunger = 0
    @pet.purity = 0
    @pet.stamina = 0
    @pet.health = 0
    puts "Game Over"
    exit
  end

  def reset_stats
    puts "Your pet stats is reset to defaults"
    @pet.hunger = 10
    @pet.purity = 10
    @pet.stamina = 10
    @pet.health = 10
    @pet.sleeping = 10
    @pet.agility = 10
    @pet.intelect = 10
    @pet.mood = 10
  end

  def change_pet_stats
    p "enter characteristic you want to change [health hunger mood purity stamina agility intelect sleeping]"
    characteristic = gets.chomp
    case characteristic
    when 'hunger'
      p "enter new hunger value"
      value = gets.strip.to_i
      @pet.hunger = value
      p "Hunger value changed"

    when 'purity'
      p "enter new purity value"
      value = gets.strip.to_i
      @pet.purity = value
      p "Purity value changed"
    when 'mood'
      p "enter new mood value"
      value = gets.strip.to_i
      @pet.mood = value
      p "Mood value changed"
    when 'stamina'
      p "enter new stamina value"
      value = gets.strip.to_i
      @pet.stamina = value
      p "Stamina value changed"
    when 'sleeping'
      p "enter new sleeping value"
      value = gets.strip.to_i
      @pet.sleeping = value
      p "Sleeping value changed"
    when 'agility'
      p "enter new agility value"
      value = gets.strip.to_i
      @pet.agility = value
      p "Agility value changed"
    when 'intelect'
      p "enter new intelect value"
      value = gets.strip.to_i
      @pet.intelect = value
      p "Intelect value changed"
    when 'health'
      p "enter new health value"
      value = gets.strip.to_i
      @pet.health = value
      p "Health value changed"
    else
      p "nothing changes"
    end
  end

  def start_game
    p "MY PET GAME"
    pet_init()

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
     ---------------------------
     SuperAdmin actions
     1. Change animal type
     2. Change animal name
     3. Change pet stats
     4. Kill pet
     5. Reset stats
     6. Change username
     Comand: "
      command = gets.chomp()
      case command
      when "feed"
        @pet.feed
      when "wash"
        @pet.wash
      when "train"
        @pet.train
      when "play"
        @pet.play
      when "sleep"
        @pet.sleep
      when "walk"
        @pet.walk
      when "search"
        @pet.search
      when "status"
        @pet.status
      when "spectate"
        @pet.spectate
      when "voice"
        @pet.voice
      when "help"
        @pet.help
      when "change name"
        change_animal_name
      when "change type"
        change_animal_type
      when "kill"
        kill_pet
      when "reset"
        reset_stats
      when "change stats"
        change_pet_stats
      when "change username"
        change_username
        save

      when "clear"
        system "cls"
      when "exit"
        exit

      else
        puts " Hint typo string command example feed"
      end

    end
  end
end
