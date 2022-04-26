require 'tty-prompt'
prompt = TTY::Prompt.new

while true

selection = TTY::Prompt.new.select("What game would you like to play? Please select from the following options:",  cycle: true, marker: '>', echo: false) do |menu|
 #menu options
  menu.default 3
  menu.choice 'Hangman', 1 
  menu.choice 'Math Big Brain', 2
  menu.choice 'Trivia', 3

case selection
when 1 
   require_relative 'hangman' #calls hangman file.
when 2
    require_relative 'math'   #calls math file.
when 3
    require_relative 'trivia' #calls trivia file.


end
end
end      