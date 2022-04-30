require 'tty-prompt'
require 'tty-font'
require 'rainbow/refinement'
require_relative 'user'
using Rainbow
font = TTY::Font.new(:straight)
prompt = TTY::Prompt.new
# $points = nil.to_i         #score update 
#-------------------------------------------
if ARGV[0]
  ARGV[0] = '-h'
  help_menu
  exit
end
ARGV.clear
#-------------------------------------------
puts font.write("Big Brain")
puts 'Welcome To Big Brain!'.green
puts 'Please enter your name.'.blue
#-------------------------------------------
user_name_count = 0
while user_name_count < 5
  user_name = gets.chomp.capitalize

  # loop for a name
  if user_name != ''
    break

  # loop 5 times or until name is entered.
  else
    user_name_count += 1
    if user_name_count == 5
      puts 'No name entered'.yellow
      user_name = 'Anonymous'.yellow
    else
      puts 'Please enter your name:'.blue
    end
  end
end

puts 'Please enter your age.'.blue
age = gets.chomp.to_i
puts

# object and welcome message
user = User.new(user_name)
puts "Welcome #{user.name} and your #{age} year old brain! Let's get training!".green

require_relative 'menu'
