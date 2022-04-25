require 'tty-prompt'
require_relative 'user'
require_relative 'menu'


prompt = TTY::Prompt.new


#prompt.select('What game would you like to play?') do |menu|
#  menu.default 3

#  menu.choice 'Hangman', 1 
#  menu.choice 'Math Big Brain', 2
#  menu.choice 'Trivia', 3
#end


#welcome to Big Brain!
#Please enter your Name and how old you are.

#user questions Name and Age

#beginner score set to 0


#tty-prompt menu to choose games bellow
#math game, hangman game, trivia

#exit option

require_relative 'hangman'
require_relative 'math'