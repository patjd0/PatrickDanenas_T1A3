require 'tty-prompt'

puts()
puts "Welcome to math Big Brain!"

  i = 0
  score = 0
#number of games  
  while i < 10
  puts()
  	i = i + 1

 # rand making a random number between 1..10   
  x = (rand(10))  
  y = (rand(10))
  z = x * y

# the question itself  
  puts(("What is ") + String(x) + " times " + String(y) + ("?"))
  answer = Integer(gets())
  correct = "Correct!"                                  
  incorrect = "Incorrect."
#if correct update +1 to score  
  if answer == z
  	puts(correct)
      score = score + 1
  else
#if not correct dont add anything put "incorrect"    
 	puts(incorrect)
  end
  end
 puts()
 puts("Thank you for playing!")
 puts("You scored #{score} out of " + String(i) + ".")
 puts ()

#still working out how to add score to user