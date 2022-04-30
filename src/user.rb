require 'tty-prompt'
prompt = TTY::Prompt.new

# prompt.ask('What is your name?', required: true)
# prompt.ask('How old are you?', required: true)

class User
  attr_accessor :name

  def initialize(name)
    @name = name
  end
  # def user_name(name)
  #  @name = name
  # end
end

def help_menu
  system 'clear'
  puts 'This is the help menu'
  puts
  puts 'You can exit the program anytime with "CTRL-C".'
  puts
  puts 'When starting the application you will first be asked to enter your name then age.'
  puts
  puts 'From the main menu you are given a choice of three mini games to play.'
  puts
  puts 'You may exit the program by selecting exit.'
end

#---------------------overall score-------------------------------
# class Points
#    attr_accessor :score_all
#    def initialize(scores)
#        @score_all = scores
#    end
#   def add_score(game_score)
#        @score_all = game_score.dispence_score
#    end
# end

# class Game_score
#    def dispence_score
#        [1,100]
#    end
# end
