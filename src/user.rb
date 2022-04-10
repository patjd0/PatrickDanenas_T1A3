require 'tty-prompt'

#user class to take user name and age.
#this class wil also display a score based on games played.
class User
    attr_reader :name, :age
    attr_writer :score

    def initialize(name, age, score)
     @name = name
     @age = age
     @score = 0
    end 
# this class to be input into other pages with require 'user'
end  