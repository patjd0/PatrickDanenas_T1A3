require 'tty-prompt'
require 'rainbow/refinement'
using Rainbow

class Hangman
  def initialize
    # Number of lives for player
    @word = words.sample
    @lives = 6
    @word_teaser = ''
    # Word to guess teaser shown with _ on screen x the number of letters
    @word.first.size.times do
      @word_teaser += '_ '
    end
  end

  # Hangman words and clues bellow
  def words
    [
      ['bandwagon', 'To cheer for a winning team'],
      ['gazebo', 'To shelter you from the weather'],
      ['kiosk', 'Inside a shopping centre'],
      ['zombie', 'Considered scary'],
      ['whiskey', 'Found with ice'],
      ['coffee', 'Before starting work']
    ]
  end

  def print_teaser(last_guess = nil)
    update_teaser(last_guess) unless last_guess.nil? # unless last_guess was not nil
    puts @word_teaser
  end

  def update_teaser(last_guess)
    # .split splits into an array and the teaser with a small space between letters
    new_teaser = @word_teaser.split

    new_teaser.each_with_index do |letter, index|
      # replace _ with letter if it matches correct letter in word
      new_teaser[index] = last_guess if letter == '_' && @word.first[index] == last_guess
    end
    # .join joins array to a string
    @word_teaser = new_teaser.join(' ')
  end

  def make_guess
    if @lives > 0
      # if you still have lives remaining keep playing
      puts 'Enter a letter'.magenta
      guess = gets.chomp
      # good guess = new word first from word bank that was not guessed already.
      good_guess = @word.first.include? guess

      if guess == 'exit'
        puts 'Thank you for playing!'.green
      # if guess is longer than one letter it will prompt you "guess one letter at a time"
      elsif guess.length > 1
        puts 'Guess one letter at a time!'
        make_guess
      # if a letter is correct prompt "correct"
      elsif good_guess
        puts 'Correct!'.green

        print_teaser guess
        # if word is complete "Nice work"
        if @word.first == @word_teaser.split.join # .join joins the array back to the string
          puts 'Nice work! You scored '.green + "#{@lives} ".yellow + '/ '.green + '6'.yellow
        else
          # if word not complete guess again
          make_guess
        end
      else
        @lives -= 1 # subtracts one life and prompt try again
        puts "You have #{@lives} more attempts.".yellow
        make_guess
      end
    else # when out of lives
      puts 'Game over... better luck next time!'.red
    end
  end

  def begin
    # When starting the game this is the first thing you will see
    puts
    puts "New game of Hangman, your word is #{@word.first.size} characters long".blue
    puts "To exit game type 'exit'"

    print_teaser # word in "_ _ _ _"
    puts "Clue: #{@word.last}".blue

    make_guess
  end
end

# add score to user class and update overall score
game = Hangman.new
game.begin
