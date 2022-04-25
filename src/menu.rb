require 'tty-prompt'

def main_menu
    answer = @@prompt.select("What Big Brain Game would you like to play?", 
    ["Hangman", "Math Big Brain", "Trivia"],required: true)
      case answer
          when "Hangman"
            load('hangman.rb')
          when "Math Big Brain"
            load('math.rb') 
          when "Trivia"
            load('trivia.rb') 
          else 
            puts "Error"
      end
      
end      