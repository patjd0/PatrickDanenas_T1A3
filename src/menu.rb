require 'tty-prompt'
prompt = TTY::Prompt.new

while true
#"Your current score is " + "#{$points}!"  

#menu gem prompt and loop 
  selection = TTY::Prompt.new.select(' What Brain game would you like to play?', cycle: true, marker: '>',
                                                                                echo: false) do |menu|                                                                             
    # menu options
    menu.default 3
    menu.choice 'Hangman', 1
    menu.choice 'Math Big Brain', 2
    menu.choice 'Trivia', 3
    menu.choice 'Exit', 4

    case selection
    when 1
      require_relative 'hangman' # calls hangman file.
    when 2
      require_relative 'math'   # calls math file.
    when 3
      require_relative 'trivia' # calls trivia file.
    when 4
      system 'clear'  
      puts "Have a nice day!" # goodbye message and exit loop
      return

    end
  end
end
