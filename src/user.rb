require 'tty-prompt'
require_relative 'hangman'
require_relative 'math'
require_relative 'user'

class User
    def initialize(name, age)
     @name = name
     @age = age
    end  
end  