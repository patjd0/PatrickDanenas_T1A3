require 'tty-prompt'
prompt = TTY::Prompt.new


#user class to take user name and age.
#this class wil also display a score based on games played.

#result = prompt.collect do
#  key(:name).ask("What is your name?")

#  key(:age).ask("What is your age?", convert: :int)
#end

prompt.ask('What is your name?', required: true)
prompt.ask('How old are you?', required: true)

class User
    attr_reader :name, :age
    attr_writer :score

    def initialize(name, age, score)
     @name = name
     @age = age
     @score = nil
    end 
# this class to be input into other pages with require 'user'
end  