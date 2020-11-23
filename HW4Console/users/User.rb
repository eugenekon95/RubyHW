require_relative "../pet/Animal.rb"
require_relative "../pet/Pet.rb"

class User
  attr_accessor :username, :password

  def initialize(username, password)
    @username = username
    @password = password
    @role = 'user'
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
      when "clear"
        system "cls"
      when "exit"
        exit

      else
        puts " Hint typo string command example feed"
      end

    end
  end

  def pet_init()
    p "Choose Animal type"
    animal = gets.chomp
    p "Choose Animal name"
    name = gets.chomp
    @pet = Pet.new(animal, name)
    p "#{animal} #{name} was born"
  end
end
