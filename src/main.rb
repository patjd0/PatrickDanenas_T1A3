require 'tty-prompt'
require_relative 'user'
prompt = TTY::Prompt.new



puts "Welcome To Big Brain!"
puts "Please enter your name."
    user_name = gets.chomp.capitalize
puts "Please enter your age."    
    age = gets.chomp


# Creates a new cat object, and reaffirms to the user their input with a greeting. 
user = User.new(user_name)
puts "Welcome #{user.name} and your #{age} year old brain! Let's get training!"


require_relative 'menu'


#puts "welcome to Big Brain!"

