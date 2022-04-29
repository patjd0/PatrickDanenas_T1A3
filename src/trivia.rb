require 'tty-prompt'
require_relative 'user'

puts "Welcome #{User.name} to Big Brain trivia"
puts

while true
selection = TTY::Prompt.new.select(' Please choose a trivia topic!') do |menu|

    menu.choice 'Geography', 1
    menu.choice 'Ancient History', 2
    menu.choice 'Modern History', 3
    menu.choice 'Return to main menu', 4
    case selection
    when 1
      puts "that was 1"
    when 2
      puts "that was 2"
    when 3
      puts "Modern History it is!"
      require_relative 'modern'
    when 4
      system 'clear'  
      puts "Good Game!"
      return
    
    end
  end
end

# list of three topics in tty-prompt menu
# geography, modern history, ancient history.
# each option when chosen will output 10 random questions for the user to answer.
# the user will be given a score out of 10.

# puts ()
# output you scored  _ out of 10
# prompt user back at main menu
# update user overall score.
