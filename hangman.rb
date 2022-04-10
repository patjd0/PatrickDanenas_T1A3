require 'tty-prompt'

class Hangman
def initialize
#Number of lives for player  
    @word = words.sample
    @lives = 6
    @word_teaser = ""     
#Word to guess teaser shown with _ on screen x the number of letters
      @word.first.size.times do
      @word_teaser += "_ "  
    end
end

 #Hangman words and clues bellow
def words
    [
     ["bandwagon", "To cheer for a winning team"],
     ["gazebo", "To shelter you from the weather"],
     ["kiosk", "Inside a shopping centre"],
     ["zombie", "Considered scary"],
     ["whiskey", "Found with ice"],
     ["coffee", "Before starting work"]
    ]
end



  def print_teaser last_guess = nil
    update_teaser(last_guess) unless last_guess.nil?
    puts @word_teaser
  end

  def update_teaser last_guess
    new_teaser = @word_teaser.split

    new_teaser.each_with_index do |letter, index|
# replace _ with letter if it matches letter in word
      if letter == '_' && @word.first[index] == last_guess
        new_teaser[index] = last_guess
      end
    end

    @word_teaser = new_teaser.join(' ')
  end



def make_guess  
    if @lives > 0
#if you still have lives remaining keep playing      
      puts "Enter a letter"
      guess = gets.chomp

      good_guess = @word.first.include? guess

      if guess == "exit"
        puts "Thank you for playing!"
#if guess is longer than one letter it will prompt you "guess one letter at a time"
      elsif guess.length > 1
        puts "Guess one letter at a time!"
          make_guess
#if a letter is correct prompt "correct"       
      elsif good_guess
        puts "Correct!"

        print_teaser guess
#if word is complete "Nice work"
        if @word.first == @word_teaser.split.join
          puts "Nice work!"
        else
          make_guess
        end
      else
        @lives -= 1     #subtracts one life and prompt try again 
        puts "You have #{ @lives } lives left. Try again!"
        make_guess
      end
    else                #when out of lives
      puts "Game over... better luck next time!"
    end
end

def begin
#When starting the game this is the first thing you will see 
    puts "New game, your word is #{ @word.first.size } characters long"
    puts "To exit game type 'exit'"
    print_teaser

    puts "Clue: #{ @word.last }"

    make_guess
end

end
game = Hangman.new
game.begin 