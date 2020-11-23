class Admin < User
  def initialize(username = "Admin", password = "nimda")
    @username = username
    @password = password
    @role = 'admin'
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
         Admin actions
         1. Change animal type
         2. Change animal name
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
      when "change name"
        @pet.change_animal_type
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
