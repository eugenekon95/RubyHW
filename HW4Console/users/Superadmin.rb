class Superadmin < User
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
     6. Set pet stats
     7. Change username
     Comand: "
      command = gets.chomp()
      case command
      when "feed"
        @pet.feed()
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
        @pet.change_animal_name
      when "change type"
        @pet.change_animal_type
      when "kill"
        @pet.kill_pet
      when "reset"
        @pet.reset_stats
      when "change stats"
        @pet.change_stats
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
