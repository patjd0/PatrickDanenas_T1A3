require 'tty-prompt'
require_relative 'user'
prompt = TTY::Prompt.new
#$points = nil.to_i         #score update

puts 'Welcome To Big Brain!'
puts 'Please enter your name.'
user_name = gets.chomp.capitalize

puts 'Please enter your age.'
age = gets.chomp
puts

# Creates object and outputs a greeting.
user = User.new(user_name)
puts "Welcome #{user.name} and your #{age} year old brain! Let's get training!"

require_relative 'menu'
