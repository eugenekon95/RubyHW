require_relative "pet/Animal.rb"
require_relative "pet/Pet.rb"
require_relative "users/User.rb"
require_relative "users/Admin.rb"



def game
  p "MY PET GAME"
  log_in()
  @user.start_game()
  @user.pet_init()
  
end





def user_init()
  p "Choose username"
  username = gets.chomp
  p "Choose password"
  password = gets.chomp
  @user = Admin.new(username, password)
  p " New user #{username}  was created"
end

def log_in
  p "Choose username"
  @username = gets.chomp
  p "Choose password"
  @password = gets.chomp
  if is_admin?
  @user = Admin.new(@username, @password)
  p "New user #{@username}  was created"
  elsif is_superadmin?
  @user = Superadmin.new(@username, @password)
  p "New user #{@username}  was created"
  else
  @user = User.new(@username, @password)
  p "New user #{@username}  was created"
  end
 

  end
  
  




def is_admin?
  @username == 'admin' && @password == 'nimda'
  p "hello admin"
end

def is_superadmin?
  @username == 'superadmin' && @password == 'nimdarepus'
  p "hello superadmin"
end


 
game()
