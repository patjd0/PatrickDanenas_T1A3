require 'tty-prompt'
require_relative 'user'
require 'rainbow/refinement'
using Rainbow
# opening welcome
puts
puts 'Welcome to math Big Brain!'.green

i = 0
score = 0
# number of games/questions
while i < 10
  i += 1

  puts
  # rand making a random number between 1..10
  x = rand(10)
  y = rand(10)
  z = x * y

  # the question itself
  puts('What is ' + String(x) + ' times ' + String(y) + '?')
  answer = Integer(gets)
  correct = 'Correct!'.green
  incorrect = 'Incorrect.'.red

  # if correct update +1 to score
  if answer == z
    puts(correct)
    score += 1
  else
    # if not correct dont add anything put "incorrect"
    puts(incorrect)
  end
end

# closing statement and score
puts
puts('Thank you for playing!'.green)
puts("You scored #{score} out of " + String(i) + '.')
puts

#------------------------------------------------------------------------------------------
# def add (score, points)
#  return score += points
# end
# puts add(ARGV[0].to_i, ARGV[1].to_i)  #" score #{$points.to_i}"
# still working out how to add score to user class updating overall score
