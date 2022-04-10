require 'tty-prompt'
require_relative '../methods/meth'

class Math 
puts()
puts "Welcome to math brain training!"

  i = 0
  score = 0
  while i < 10
  puts()
  	i = i + 1
 # rand making a random number between 1..10   
  x = (rand(10))  
  y = (rand(10))
  z = x * y
  puts(("What is ") + String(x) + " times " + String(y) + ("?"))
  answer = Integer(gets())
  correct = "Correct!"                                  
  incorrect = "Incorrect."
  if answer == z
  	puts(correct)
      score = score + 1
  else
 	puts(incorrect)
  end
  end
 puts()
 puts("Thank you for playing!")
 puts("You scored #{score} out of " + String(i) + ".")
 puts()

end