require_relative "pet/Animal.rb"
require_relative "pet/Pet.rb"
require_relative "users/User.rb"



def game
  p "MY PET GAME"
  user_init()
  @user.start_game()
  @user.pet_init()
  
end



def pet_init()
  p "Choose Animal type"
  animal = gets.chomp
  p "Choose Animal name"
  name = gets.chomp
  @pet = Pet.new(animal, name)
  p "#{animal} #{name} was born"
end

def user_init()
  p "Choose username"
  username = gets.chomp
  p "Choose password"
  password = gets.chomp
  @user = User.new(username, password)
  p " New user #{username}  was created"
end

def log_in
  
  
end





 
game()
