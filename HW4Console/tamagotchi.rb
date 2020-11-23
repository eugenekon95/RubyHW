require_relative "pet/Animal.rb"
require_relative "pet/Pet.rb"
require_relative "users/User.rb"
require_relative "users/Admin.rb"
require_relative "users/Superadmin.rb"




def game
  p "MY PET GAME"
  log_in()
  @user.start_game()
  @user.pet_init()
  
end







def log_in
  p "Choose username"
  @username = gets.chomp
  p "Choose password"
  @password = gets.chomp
  if is_admin?
  @user = Admin.new(@username, @password)
  p "New user #{@username}  was created"
  end
  if is_superadmin?
  @user = Superadmin.new(@username, @password)
  p "New user #{@username}  was created"
  end

  end
 


  
  




def is_admin?
  @username == 'admin' && @password == 'nimda'
  
end

def is_superadmin?
  @username == 'Superadmin' && @password == 'nimdarepus'
  
end



 
game()
