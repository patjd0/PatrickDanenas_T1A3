require 'tty-prompt'

class User
    attr_reader :name, :age
    attr_writer :score

    def initialize(name, age, score)
     @name = name
     @age = age
     @score = 0
    end 

end  