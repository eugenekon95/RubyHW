require_relative "pet/Animal.rb"
require_relative "pet/Pet.rb"
require_relative "users/User.rb"
require_relative "users/Admin.rb"
require_relative "users/Superadmin.rb"

def game
  p "MY PET GAME"
  log_in
  @user.save
  @user.start_game
 
end

def log_in
  p "Choose username"
  @username = gets.chomp
  p "Choose password"
  @password = gets.chomp
  if is_admin?
    @user = Admin.new(@username, @password)
    puts "Hello Admin"

  elsif is_superadmin?
    @user = Superadmin.new(@username, @password)
    puts "Hello Superadmin"

  else
    @user = User.new(@username, @password)
    puts "Hello User"
  end
end

def is_admin?
  @username == 'admin' && @password == 'nimda'
end

def is_superadmin?
  @username == 'superadmin' && @password == 'nimdarepus'
end

game
