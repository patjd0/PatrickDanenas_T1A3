require 'tty-prompt'
require_relative 'user'
require 'rainbow/refinement'
using Rainbow

puts "Welcome #{User.name} to Big Brain trivia" # welcome message
puts

while true # menu loop for trivia games with colour!
  selection = TTY::Prompt.new.select(' Please choose a trivia topic!'.green) do |menu|
    menu.choice 'Geography'.cyan, 1
    menu.choice 'Ancient History'.cyan, 2
    menu.choice 'Modern History'.cyan, 3
    menu.choice 'Return to main menu'.yellow, 4
    case selection
    when 1 # start geography game
      puts 'Geography!'.cyan
      require_relative 'trivias/geography'
    when 2 # start ancient history game
      puts 'Ancient History!'.cyan
      require_relative 'trivias/ancient' 
    when 3 # start modern history game
      puts 'Modern History it is!'.cyan
      require_relative 'trivias/modern'
    when 4 # return to main menu
      system 'clear'
      puts 'Good Game!'.green
      return

    end
  end
end
