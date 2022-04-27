require 'tty-prompt'
prompt = TTY::Prompt.new

#prompt.ask('What is your name?', required: true)
#prompt.ask('How old are you?', required: true)

class User
    attr_accessor :age, :name, :scores

    def initialize(name)
        @name = name
        @age = age    
        @scores = nil                         
    end

   # def points([])
   #     @scores << {[]}
   # end    
end