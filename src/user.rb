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

#--------------------------------------------------------------------------------
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
