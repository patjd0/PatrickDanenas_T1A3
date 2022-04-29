require 'tty-prompt'
require_relative 'user'
prompt = TTY::Prompt.new
#$points = nil.to_i         #score update

puts 'Welcome To Big Brain!'
puts 'Please enter your name.'
#----------------------------------------------------------------------------------
user_name_count = 0
while user_name_count < 5
    user_name = gets.chomp.capitalize

    #loop for a name
    if user_name != "" 
        break

    # loop 5 times or until name is entered. 
    else
        user_name_count += 1
        if user_name_count == 5
            puts "No name entered"
            user_name = "Anonymous"
        else
            puts "Please enter your name:"
        end
    end
end

puts 'Please enter your age.'
age = gets.chomp
puts

# object and welcome message
user = User.new(user_name)
puts "Welcome #{user.name} and your #{age} year old brain! Let's get training!"

require_relative 'menu'
